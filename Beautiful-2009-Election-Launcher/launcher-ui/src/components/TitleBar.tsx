import React, { useContext } from 'react';

import './TitleBar.scss';
import { launcherContext } from '../App';

function TitleBar() {
    const { closeLauncher } = useContext(launcherContext);

    return (
        <div className="titlebar">
            <div className="title"></div>
            <div className="titleControls">
                <div className="exit" onClick={()=>{ closeLauncher(); }} >x</div>
            </div>
        </div>
    );
}

export default TitleBar;