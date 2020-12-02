import React, { useContext, useEffect, useState } from 'react';
import { launcherContext } from '../App';
import LauncherSettings from '../LauncherSettings';
import NewsArticle from '../components/NewsArticle';

import './Home.scss';

function Home() {
    const {
        visiblePage,
        changePage,
        launcherState,
        saveSettings,
    } = useContext(launcherContext);

    return (
        <div className="page">
            {launcherState.newsArticle && <NewsArticle article={launcherState.newsArticle} ></NewsArticle>}
        </div>
    );
}

export default Home;