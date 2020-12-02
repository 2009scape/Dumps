const { app, BrowserWindow, Tray, ipcMain, shell, autoUpdater } = require('electron');
const fs = require('fs');
const path = require('path');
const request = require('request-promise');
const { exec, spawn } = require('child_process');
const md5File = require('md5-file');
const URL = require('url');
const manifest = require('./package.json');
const Shortcuts = require('windows-shortcuts');

// Internal Paths
const gamePaths = {
    client: path.join( app.getPath('userData'), "client.jar" ),
    appData: app.getPath('userData'),
    settingsFile: path.join( app.getPath('userData'), "launcherSettings.json"),
    launcherExecutable: path.resolve(path.dirname(process.execPath), '..', `${manifest.productName}.exe`).split('\\').join('/'),
};

// Squirrel!
const squirrelState = {
    firstRun: (process.argv.indexOf('--squirrel-firstrun') >= 0 ),
    installing: (process.argv.indexOf('--squirrel-install') >= 0 ),
    uninstalling: (process.argv.indexOf('--squirrel-uninstall') >= 0),
};

// Launchers current state, used for the UI(s)
const launcherState = {
    launchReady: false, // Is the client ready to launch?
    gameRunning: false, // Is the client running?
    statusText: "", // Text shown to the side of the play button
    launcherVisible: false, // Is the launcher visible (hidden when game is running etc)
    newsArticle: null, // Latest News
    launcherSettings: null, // Settings, loaded from disk
    launcherDefaults: {
        hideOnLaunch: true,
        showConsole: true, // Show console while the games running?
        launcherMusic: false,
        mlgMusic: false,
        connectLocally: false, // Should the client connect to a local server?
    },
    devMode: (process.argv.indexOf('-dev') >= 0), // Are we in Dev Mode?
    consoleLog: [], // Game Logs
    launcherVersion: manifest.version, // Version of the launcher
    customPages: [
        {
            name: "Wiki",
            url: "https://runescape.wiki/",
            allowedHosts: [
                "www.google.co.uk",
            ]
        }
    ],
    updatePending: false, // Is there an update waiting?
};

// Internal states for the main launcher process (this script)
const internalState = {
    mainWindow: null,
    gameProcess: null,
    splashWindow: null,
};

app.on('ready', async ()=>{
    console.log("Squirrel State", squirrelState);

    // Setup the autoupdater.
    autoUpdater.setFeedURL({
        url: `https://mystic-release.thomas-edwards.me/update/${process.platform}/${app.getVersion()}/${manifest.updateChannel}`
    });
    console.log(`[UPDATES] Set update URL to ${autoUpdater.getFeedURL()}`);

    // Open the splash while we perform our duties
    openSplash();

    if (!fs.existsSync(app.getPath('userData'))) {
        fs.mkdirSync(app.getPath('userData'));
    }

    // Perform some first time checks.
    pushEvent("splash-text", "Loading Settings");
    await loadSettings();
    if (launcherState.launcherSettings === null) {
        // Load defaults if needed.
        launcherState.launcherSettings = launcherState.launcherDefaults;
        await saveSettings();
    }

    // Perform a settings merge.
    // Merges any new defaults with the existing settings
    let merged = false;
    for (let key of Object.keys(launcherState.launcherDefaults)) {
        if (typeof launcherState.launcherSettings[key] === "undefined") {
            console.log(`[SETTINGS] Merged '${key}' default into Settings`);
            launcherState.launcherSettings[key] = launcherState.launcherDefaults[key];
            merged = true;
        }
    }
    if (merged) {
        pushEvent("splash-text", "Merging Settings");
        console.log(`[SETTINGS] There have been setting merge changes, saving to disk.`);
        await saveSettings();
    }

    // Checks if the client is ready to launch
    pushEvent("splash-text", "Checking Client Status");
    launcherState.launchReady = await checkReady();
    pushEvent("splash-text", "Fetching Launcher News");
    launcherState.newsArticle = await fetchNews();

    // Updates!
    if (!launcherState.devMode) {
        // Run outside of dev mode.

        if (!squirrelState.installing && !squirrelState.uninstalling && !squirrelState.firstRun && process.platform == "win32") {
            // Normal Mode
            pushEvent("splash-text", "Checking for updates");
            try {
                autoUpdater.checkForUpdates();
            } catch (e) {
                pushEvent("splash-text", "Error Checking for Updates");

                // Run as normal.
                openMain();
                closeSplash();
            }
        } else if (squirrelState.installing) {
            // Installation! Perform installation code.
            // The application _must_ exit or it will be killed after it has done what it needs to.
            pushEvent("splash-text", "Installing MysticScape Launcher");
            console.log(`Making shortuct to ${gamePaths.launcherExecutable}`);

            if (process.platform === "win32") {
                console.log("[INSTALLER] Performing Windows installation tasks.");
                if ( fs.existsSync(gamePaths.launcherExecutable) ) {
                    await Shortcuts.create('%APPDATA%/Microsoft/Windows/Start Menu/Programs/MysticScape.lnk', gamePaths.launcherExecutable);
                }
            }

            process.exit();
        } else if (squirrelState.uninstalling) {
            // Uninstallation! Perform uninstallation code!
            pushEvent("splash-text", "Uninstalling MysticScape Launcher");
            
            process.exit();
        } else {
            // First Run, skip updates.
            pushEvent("splash-text", "👌");
            openMain();
            closeSplash();
        }
    } else {
        // Open the main window straight away.
        pushEvent("splash-text", "👌");
        openMain();
        closeSplash();
    }

    // Handle updates
    autoUpdater.on('update-available', ()=>{
        console.log("[UPDATES] An update is available!");
        pushState({ updatePending: true });
        
        if (launcherState.splashWindow !== null) {
            // Install updates
            pushEvent("splash-text", "Downloading updates!");
        }
    });

    autoUpdater.on('update-downloaded', ()=>{
        console.log("[UPDATES] Downloaded updates!");
        if (launcherState.splashWindow !== null) {
            autoUpdater.quitAndInstall();
        }
    });
    autoUpdater.on('update-not-available', ()=>{
        console.log("[UPDATES] No updates available.");

        // Run as normal.
        pushEvent("splash-text", "👌");
        openMain();
        closeSplash();
    });

    autoUpdater.on('error', (e)=>{
        console.log("[UPDATES] Error installing updates!", e);

        if (launcherState.splashWindow !== null) {
            pushEvent("splash-text", "Error Checking for Updates");
            // Run as normal.
            openMain();
            closeSplash();
        }
    });

    // Defines internal events.

    // Starts the game launch process.
    ipcMain.on('play-game',async () => {
        await playGame();
    });

    // Asks the launcher to save settings to disk.
    ipcMain.on('update-settings',async (sender, settings) => {
        console.log("[SETTINGS] Settings save requested! Settings have been updated to ", settings);
        pushState({
            launcherSettings: settings
        });
        await saveSettings();
    });

    // Returns the game status (deprecated)
    ipcMain.on('game-status',e => {
        e.returnValue = launcherState.gameRunning;
    });

    // Manually opens a URL in the browser.
    ipcMain.on('open-url', (sender, url) => {
        require('electron').shell.openExternal(url);
    });

    // Exits the Launcher
    ipcMain.on('close-launcher', ()=>{
        process.exit();
    });

    // Restart and install updates.
    ipcMain.on('do-update', ()=>{
        autoUpdater.quitAndInstall();
    });

    // Returns the launcher state upon request.
    ipcMain.on('get-state', (e)=>{
        console.log("State fetched");
        e.returnValue = launcherState;
    });

    // Handles opening all clicked URLs externally.
    app.on('web-contents-created', (event, contents) => {
        if (contents.getType() == 'webview') {
            contents.on('will-navigate', (event, url) => {
                const urlPath = URL.parse(url);
                
                // Allow certain websites.
                if (urlPath.hostname.toLowerCase() === "runescape.wiki") return;
                if (urlPath.hostname.toLowerCase() === "classic.runescape.wiki") return;
                if (urlPath.hostname.toLowerCase() === "oldschool.runescape.wiki") return;

                // Is it one of the custom pages?
                for (let p of launcherState.customPages) {
                    const parsedPage = URL.parse(p.url);
                    if (urlPath.hostname.toLowerCase() === parsedPage.hostname.toLowerCase()) return;
                    for (let aH of p.allowedHosts) {
                        if (urlPath.hostname.toLowerCase() === aH.toLowerCase()) return;
                    }
                }
                console.log(`[WEBVIEW] URL ${url} is not allowed to open, pushing to browser.`);
                event.preventDefault()
                shell.openExternal(url)
            })
        }
    })


});

function openSplash() {
    console.log("[SPLASH] Opening Splash Window.");
    internalState.splashWindow = new BrowserWindow({
        frame: launcherState.devMode,
        width:250,
        height:290,
        webPreferences: {
            nodeIntegration: false,
            preload: __dirname + '/splash/preload.js',
        }
    });
    internalState.splashWindow.on('ready-to-show',()=>{
        console.log("[SPLASH] Opened Splash Window.");
    });
    internalState.splashWindow.loadURL(path.join("file://", __dirname, "splash", "index.html"));
    internalState.splashWindow.on('close', ()=>{
        console.log("[SPLASH] Closed Splash Window.");
        internalState.splashWindow = null;
    });
}
function closeSplash() {
    if (internalState.splashWindow === null) return;
    internalState.splashWindow.close();
}

function openMain() {
    internalState.mainWindow = new BrowserWindow({
        width:1000,
        height:700,
        frame: launcherState.devMode,
        show: false,
        transparent: true,
        webPreferences: {
            webviewTag: true,
            nodeIntegration: false,
            preload: __dirname + "/preload.js",
        },
    });
    internalState.mainWindow.on('ready-to-show',function(){
        this.show();
        pushState({ launcherVisible: true });
    });
    internalState.mainWindow.on('close', ()=>{
        internalState.mainWindow = null;
    });
    
    if (launcherState.devMode) {
        internalState.mainWindow.loadURL("http://localhost:3000/");
    } else {
        internalState.mainWindow.loadURL(path.join("file://", __dirname, "html", "index.html"));
    }
}
function closeMain() {
    if (!internalState.mainWindow) return;
    internalState.mainWindow.close();
}

// Sends the latest state to the launchers UI
function pushState(newState) {
    for (let k of Object.keys(newState)) {
        launcherState[k] = newState[k];
    }
    for (let win of BrowserWindow.getAllWindows()) {
        win.webContents.send("launcher-state", launcherState);
    }
}
function pushEvent(ev, args) {
    for (let win of BrowserWindow.getAllWindows()) {
        win.webContents.send(ev, args);
    }
}

// Loads settings from disk.
async function loadSettings() {
    console.log("[SETTINGS] Attempting to load settings from disk.");
    if (!fs.existsSync(gamePaths.settingsFile)) return;
   
    let settings = fs.readFileSync(gamePaths.settingsFile);
    try {
        settings = JSON.parse(settings);
    } catch (e) {
        console.log("[SETTINGS] Failed to load settings from disk!", e);
        return;
    }

    console.log("[SETTINGS] Successfully loaded settings from disk!");
    pushState({ launcherSettings: settings });
}
async function saveSettings() {
    console.log("[SETTINGS] Saving settings to disk.");
    try {
        fs.writeFileSync(gamePaths.settingsFile, JSON.stringify(launcherState.launcherSettings));
    } catch (e) {
        console.log("[SETTINGS] Failed to save settings to disk!");
        return;
    }
    console.log("[SETTINGS] Successfully saved settings to disk!");
}
async function fetchNews() {
    console.log("[NEWS] Fetching latest news.");
    try {
        const news = await request({
            uri: "https://mysticscape.ilkohost.me/wp-json/wp/v2/posts?per_page=1&_embed",
            json: true,
        });

        const ret = {
            title: "",
            content: "",
            featuredImage: "",
            url: "",
        };

        ret.title = news[0].title.rendered;
        ret.content = news[0].content.rendered;
        ret.excerpt = news[0].excerpt.rendered;
        ret.featuredImage = news[0]["_embedded"]["wp:featuredmedia"][0].media_details.sizes.full.source_url;
        ret.url = news[0].link;

        return ret;
    } catch (e) {
        console.log("[NEWS] Failed to fetch the latest news!", e);
        return null;
    }
    console.log("[NEWS] Fetched latest news!");
}
async function checkReady() {
    if (!fs.existsSync(gamePaths.client)) return false;
    return true;
}

// Only downloads the client if it's changed.
async function downloadClient() {
    const remoteHash = await request("http://minio.thomas-edwards.me/mysticscape/client/latest.jar.md5");

    if (fs.existsSync(gamePaths.client)) {
        const localHash = await md5File(gamePaths.client);
        if (remoteHash.toLowerCase() === localHash.toLowerCase()) return;
    }

    console.log("New Version! Downloading!");

    pushState({ statusText: "Downloading Latest Client" });

    const clientJar = await request({
        uri: 'http://minio.thomas-edwards.me/mysticscape/client/latest.jar',
        encoding: null,
    });
    fs.writeFileSync(path.join( app.getPath('userData'), "client.jar" ), clientJar);

    pushState({ launchReady: true });
}
async function playGame() {
    if (internalState.gameProcess != null) return;
    
    pushState({ gameRunning: true });

    await downloadClient();

    const args = [ "-jar", path.join( app.getPath('userData'), "client.jar") ];
    if (launcherState.launcherSettings.connectLocally) args.push("ip=127.0.0.1");

    const prog = spawn(
        "java",
        args,
        {
            cwd: app.getPath('userData'),
            shell: true,
            //windowsHide: true,
        }
    );
    internalState.gameProcess = prog;
    
    pushState({ statusText: "Launching Game" });

    // If the launcher is set to hide, hide it!
    if (launcherState.launcherSettings.hideOnLaunch && internalState.mainWindow) {
        internalState.mainWindow.hide();
        pushState({ launcherVisible: false });
    }
    
    prog.stdout.on('data', data => {
        let lines = data.toString().split('\n');
        for (let l of lines) {
            pushEvent("console", l.trim());
            launcherState.consoleLog.push(l.trim());
            pushState({ consoleLog: launcherState.consoleLog });
            console.log(l.trim());
        }
    });
    prog.stderr.on('data', data => {
        let lines = data.toString().split('\n');
        for (let l of lines) {
            pushEvent("console", l.trim());
            launcherState.consoleLog.push(l.trim());
            pushState({ consoleLog: launcherState.consoleLog });
            console.log(l.trim());
        }
    });
    prog.on('close',()=>{
        console.log("Game closed");
        pushState({ gameRunning: false, statusText: "" });
        pushState({ launcherVisible: true });
        if (internalState.mainWindow) internalState.mainWindow.show();
        internalState.gameProcess = null;
    });
}

// Called when the player wishes to launch the game.
// Calculates download steps required etc.
async function launchGame() {
    const steps = [];

    if (!fs.existsSync(gamePaths.client)) {
        steps.push("Downloading Client");
    }
}