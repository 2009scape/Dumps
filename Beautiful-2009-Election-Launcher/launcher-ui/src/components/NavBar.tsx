import React, { useContext, useState, useEffect } from 'react';
import ClassNames from 'classnames';
import { launcherContext } from '../App';

import './NavBar.scss';
import Logo from '../img/Logo.png';

function NavBar() {
    const { changePage, visiblePage, launcherState } = useContext(launcherContext);

    return (
        <div className="navbar">
            <div className="logo"><img src={Logo}/></div>
            <div className="push"></div>
            <div className="pages">
                <div className={ClassNames({ active: (visiblePage==="home") })} onClick={()=>{ changePage("home"); }}>Home</div>
                {launcherState.launcherSettings.showConsole && <div className={ClassNames({ active: (visiblePage==="console") })} onClick={()=>{ changePage("console"); }}>Console</div>}
                {launcherState.customPages.map( (page, key) => {
                    return (<div key={key} className={ClassNames({ active: (visiblePage===`custom-${page.name}`) })} onClick={()=>{ changePage(`custom-${page.name}`); }}>{page.name}</div>);
                })}
                <div className={ClassNames({ active: (visiblePage==="settings") })} onClick={()=>{ changePage("settings"); }}>Settings</div>
                <div className={ClassNames({ active: (visiblePage==="attributions") })} onClick={()=>{ changePage("attributions"); }}>About</div>
            </div>
        </div>
    );
}

export default NavBar;