import React, { useContext, useState, useEffect } from 'react';

import './ConsolePage.scss';
import { launcherContext } from '../App';

function ConsolePage() {
    const { launcherState } = useContext(launcherContext);
    const [ consoleLog, setConsoleLog ] = useState([] as string[]);

    useEffect(()=>{
        setConsoleLog(launcherState.consoleLog);
    }, [
        launcherState
    ]);


    return (
        <div className="page console">
            <div className="pageTitle">
                Game Console Log
                <div className="pageInfo">
                    While the game is running, you'll see its logs here!
                </div>
            </div>
            <div className="consoleLog">
                {consoleLog.map( line => {
                    return <div>{line}</div>;
                })}
            </div>
        </div>
    );
}

export default ConsolePage;