import React, { useContext, useEffect, useState, ChangeEvent } from 'react';
import { launcherContext } from '../App';
import LauncherSettings from '../LauncherSettings';
import Classnames from 'classnames';

import './Settings.scss';

function Settings() {
    const {
        visiblePage,
        changePage,
        launcherState,
        saveSettings,
    } = useContext(launcherContext);

    const [ settingsAltered, setSettingsAltered ] = useState(false);

    const [ localSettings, setLocalSettings ] = useState({ ...launcherState.launcherSettings } as LauncherSettings);

    useEffect(()=>{
        console.log("Local Settings have been altered");
        
    }, [ localSettings ]);

    const toggleHideOnLaunch = (e: ChangeEvent<HTMLInputElement>)=>{
        setLocalSettings({ ...localSettings, hideOnLaunch: e.target.checked});
        setSettingsAltered(true);
    }

    const toggleShowConsole = (e: ChangeEvent<HTMLInputElement>)=>{
        setLocalSettings({ ...localSettings, showConsole: e.target.checked});
        setSettingsAltered(true);
    }
    const toggleLauncherMusic = (e: ChangeEvent<HTMLInputElement>) => {
        setLocalSettings({ ...localSettings, launcherMusic: e.target.checked});
        setSettingsAltered(true);
    }

    const toggleLocalConnect = (e: ChangeEvent<HTMLInputElement>) => {
        setLocalSettings({ ...localSettings, connectLocally: e.target.checked});
        setSettingsAltered(true);
    }

    const saveChanges = () => {
        if (!settingsAltered) return;
        saveSettings({ ...localSettings });
        setSettingsAltered(false);
    };

    return (
        <div className="page settings">
            <div className="settingsTitle">
                Launcher Settings
                <div className="settingsInfo">These settings alter the way the launcher behaves</div>
            </div>
            <div className="panes">
                <div className="pane">
                    <div className="paneTitle">Launcher Settings</div>
                    <div className="input">
                        <input type="checkbox" id="hideOnLaunch" defaultChecked={localSettings.hideOnLaunch} onChange={toggleHideOnLaunch}></input> <label htmlFor="hideOnLaunch">Hide Launcher when Game Starts</label>
                    </div>
                    <div className="input">
                        <input type="checkbox" id="showConsole" defaultChecked={localSettings.showConsole} onChange={toggleShowConsole}></input> <label htmlFor="showConsole">Enable game console log tab in launcher</label>
                    </div>
                    <div className="paneTitle">Client Settings</div>
                    <div className="input">
                        <input type="checkbox" id="connectLocally" defaultChecked={localSettings.connectLocally} onChange={toggleLocalConnect}></input> <label htmlFor="connectLocally">Connect to a localhost RuneScape Server (debug)</label>
                    </div>
                </div>
                <div className="pane">
                    <div className="paneTitle">Easter Eggs</div>
                    <div className="input">
                        <input type="checkbox" id="launcherMusic" defaultChecked={localSettings.launcherMusic} onChange={toggleLauncherMusic}></input> <label htmlFor="launcherMusic">Play RuneScape theme in MysticScape launcher</label>
                    </div>
                </div>
            </div>
            <div className="settingsControls">
                <button className={Classnames("button", { disabled: !settingsAltered })} onClick={()=>{ saveChanges(); }}>Save Settings</button>
            </div>
            <pre>
                {JSON.stringify(localSettings)}
            </pre>
        </div>
    );
}

export default Settings;