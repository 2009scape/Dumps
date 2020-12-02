const ipcRenderer = require('electron').ipcRenderer;
const { EventEmitter } = require('events');

const emitter = new EventEmitter();

ipcRenderer.on('console', line => {
    console.log(line);
});
ipcRenderer.on('game-end', ()=>{
    window.mystic.playing = false;
    emitter.emit('game-end');
});
ipcRenderer.on('game-start', ()=>{
    window.mystic.playing = true;
    emitter.emit('game-start');
});
ipcRenderer.on('game-status', (sender, arg)=>{ emitter.emit("game-status", arg); });
ipcRenderer.on('launcher-state', (sender, arg) => {
    console.log("[PRELOAD] Got updated state!");
    emitter.emit('launcher-state', arg);
});

window.mystic = {
    playGame: ()=>{
        ipcRenderer.send("play-game");
    },
    on: (ev,cb) => { emitter.on(ev, cb); },
    isRunning: ()=> {
        return ipcRenderer.sendSync("game-status");
    },
    openURL: url => {
        ipcRenderer.send("open-url", url);
    },
    getState: () => {
        return ipcRenderer.sendSync("get-state");
    },
    updateSettings: (settings) => {
        console.log("UI Saved settings to disk.");
        ipcRenderer.send("update-settings", settings);
    },
    closeLauncher: () => {
        ipcRenderer.send("close-launcher");
    }
};