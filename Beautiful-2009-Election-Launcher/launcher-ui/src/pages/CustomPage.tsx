import React from 'react';
import { ICustomPage } from '../preload';

import './CustomPage.scss';

function CustomPage(props: ICustomPage) {
    return (
        <div className="page custom">
            <webview src={props.url}></webview>
        </div>
    );
}

export default CustomPage;