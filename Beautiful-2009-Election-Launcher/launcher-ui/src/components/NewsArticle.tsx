import React, { useContext } from 'react';
import { INewsArticle } from '../preload';

import { launcherContext } from '../App';

import './NewsArticle.scss';

function NewsArticle(props: { article: INewsArticle }) {
    const { openBrowser } = useContext(launcherContext);

    return (
        <div className="article">
            <div className="articleImage">
                <div className="imageShadow"></div>
                <img src={props.article.featuredImage as string}/>
            </div>
            <div className="articleContent">
                <div className="title">{props.article.title}</div>
                <div className="content" dangerouslySetInnerHTML={{ __html: props.article.content as string }}></div>
                <div className="articleButtons">
                    <div className="push"></div>
                    <div className="readMore" onClick={()=>{ openBrowser(props.article.url as string) }}>Read Post</div>
                </div>
            </div>
        </div>
    );
}

export default NewsArticle;