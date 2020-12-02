import React from 'react';
import ReactDOM from 'react-dom';

import './index.css';
import App from './App';

import BadEnv from './badEnv';
import Mystic from './preload';

let MysticAPI = null;
if ((window as any).mystic) {
	MysticAPI = (window as any).mystic as Mystic;
}

console.log(MysticAPI);
if (MysticAPI) {
	ReactDOM.render(
		<React.StrictMode>
			<App />
		</React.StrictMode>,
		document.getElementById('root')
	);
} else {
	ReactDOM.render(
		<React.StrictMode>
			<BadEnv />
		</React.StrictMode>,
		document.getElementById('root')
	);
}
