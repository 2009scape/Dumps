import React, { useContext } from 'react';
import { launcherContext } from '../App';
import ClassNames from 'classnames';

import './Controls.scss';

function Controls() {
    const { launchGame, launcherState } = useContext(launcherContext);

    return (
        <>
            <div className="version">v{launcherState.launcherVersion}</div>
            <div className="controls">
                <div className="statusText">{launcherState.statusText}</div>
                <div className={ClassNames("playButton",  { disabled: launcherState.gameRunning })} title={(launcherState.gameRunning === true ? "Game is already running." : "Launch Game")} onClick={()=>{ launchGame(); }}>
                    Play
                </div>
                <div className="push"></div>
            </div>
        </>
    );
}
export default Controls;