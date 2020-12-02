import React, { useState, useEffect } from 'react';
import './App.scss';
import classNames from 'classnames';
import Home from './pages/Home';

import LauncherSettings from './LauncherSettings';

import Mystic, {LauncherState} from './preload';
import NavBar from './components/NavBar';
import Controls from './components/Controls';
import Attributions from './pages/Attributions';
import Settings from './pages/Settings';
import TitleBar from './components/TitleBar';
import ConsolePage from './pages/ConsolePage';
import CustomPage from './pages/CustomPage';
import PageContainer from './pages/PageContainer';

let MysticAPI:(Mystic|null) = null;
if ((window as any).mystic) {
	MysticAPI = (window as any).mystic as Mystic;
}

export const launcherContext = React.createContext({
	visiblePage: "",
	changePage: (page: String)=>{},
	launcherState: {} as LauncherState,
	saveSettings: (settings: LauncherSettings) =>{},
	launchGame: ()=>{},
	openBrowser: (url: string) => { /* Do nothing, say nothing! */},
	closeLauncher: ()=>{},
});

const Konami = (window as any).Konami;

function App() {
	const [ launcherState, setLauncherState ] = useState(null as LauncherState | null);
	const [ visiblePage, setVisiblePage ] = useState("home");
	const [ uiState, setUiState ] = useState({
		konamiSetup: false,
		launcherMusic: new Audio("./music/scape main.mp3"),
		mlgMusic: new Audio("./music/runescape_trap.mp3"),
		doShake: false,
	});
	uiState.launcherMusic.loop = true;

	useEffect(()=>{
		// First time run

		if (MysticAPI) {
			let state = MysticAPI.getState();
			console.log("Launcher State", state);
			setLauncherState(state);

			MysticAPI.on('launcher-state', (newState: LauncherState) => {
				setLauncherState(newState);
			});


		}
	},[]);

	useEffect(()=>{
		if (launcherState === null) return;

		if (!uiState.konamiSetup) {
			console.log("Setup Konami");
			setUiState({ ...uiState, konamiSetup: true });
			new Konami(() => {
				if (launcherState) {
					if (launcherState.launcherSettings.launcherMusic) {
						console.log("Switching to MLG Version");
						if (!uiState.launcherMusic.paused) {
							uiState.launcherMusic.pause();
							uiState.mlgMusic.play();
						}
					}
					saveSettings({ ...launcherState.launcherSettings, mlgMusic: true });
					setUiState({ ...uiState, doShake: true });
					setTimeout(()=> {
						setUiState({ ...uiState, doShake: false });
					}, 1000);
				}
			});
		}

		if (launcherState.launcherSettings.launcherMusic) {
			// If Music is Enabled
			if (launcherState.launcherSettings.mlgMusic) {
				// Play MLG Version
				uiState.launcherMusic.pause();
				uiState.mlgMusic.play();
			} else {
				// Play Original
				uiState.mlgMusic.pause();
				uiState.launcherMusic.play();
			}
		} else {
			console.log("Pausing Launcher Music");
			uiState.mlgMusic.pause();
			uiState.launcherMusic.pause();
		}

		if (!launcherState.launcherVisible) {
			// Launcher hidden
			if (launcherState.launcherSettings.launcherMusic) uiState.launcherMusic.pause();
		} else {
			// Launcher visible again
			if (launcherState.launcherSettings.launcherMusic) uiState.launcherMusic.play();
		}

	}, [ launcherState, uiState ]);

	useEffect(()=>{
		console.log("Launcher state has changed.");
	}, [ launcherState ]);

	const play = ()=>{
		if (!MysticAPI) return;
		MysticAPI.playGame();
	}
	const closeLauncher = ()=>{
		if (!MysticAPI) return;
		MysticAPI.closeLauncher();
	}

	const changePage = (page: String) => {
		// Can choose whether to change page or not!

		if (true) {
			setVisiblePage(page as any);
		}
	}

	const isPage = (pageName: String) => {
		if (visiblePage.toLowerCase() === pageName) return true;
		return false;
	}

	const saveSettings = (settings: LauncherSettings) => {
		// Does nothing right now.
		if (MysticAPI === null) return;
		MysticAPI?.updateSettings(settings);
	};
	const fetchPage = () => {
		if (!launcherState) return;

		switch(visiblePage.toLowerCase()) {
			case 'home':
				return <Home></Home>;
			case 'attributions':
				return <Attributions></Attributions>;
			case 'settings':
				return <Settings></Settings>;
			case 'console':
				return <ConsolePage></ConsolePage>;
			default:
				if (visiblePage.substr(0,7) === "custom-") {
					let customPage = null;
					for (let p of launcherState.customPages) {
						if (p.name === visiblePage.substr(7)) {
							customPage = p;
							break;
						}
					}
					if (customPage) {
						return <CustomPage {...customPage}></CustomPage>;
					}
				}
				return (
					<>
						<div className="page" style={{ textAlign:"center" }}>
							<h1>Not Found</h1>
							Whoops, couldn't find that screen!
						</div>
					</>
				);
		}
	}
	const openBrowser = (url: string) => {
		if (!MysticAPI) return;
		MysticAPI.openURL(url);
	}

	// When null, return loading!
	if (launcherState === null) return <div>Loading</div>;

	return (
		<launcherContext.Provider value={{ visiblePage, changePage, launcherState, saveSettings, launchGame: play, openBrowser, closeLauncher }}>
			{launcherState.devMode && <div className="debug">
				<h4>DEVELOPMENT DEBUG</h4>
				<i>No this isn't a debug console.</i>
				<br/>
				Current page is {visiblePage}
				<br/>
				The game {( launcherState.launchReady===true ? "is ready." : "isn't ready.")}
				<br/>
				The game {( launcherState.gameRunning===true ? "is running" : "isn't running")}
				<br/>
				The launcher {( launcherState.launcherVisible===true ? "is visible" : "isn't visible" )}
				<br/><br/>
				<button onClick={play}>Start Client</button>
			</div>}
			<div className={classNames("App", { shake: uiState.doShake})}>
				<TitleBar></TitleBar>
				<NavBar></NavBar>
				<PageContainer visible={isPage("home")} content={<Home></Home>}></PageContainer>
				<PageContainer visible={isPage("console")} content={<ConsolePage></ConsolePage>}></PageContainer>
				<PageContainer visible={isPage("custom-wiki")} content={<CustomPage name="wiki" url="https://runescape.wiki/"></CustomPage>}></PageContainer>
				<PageContainer visible={isPage("settings")} content={<Settings></Settings>}></PageContainer>
				<PageContainer visible={isPage("attributions")} content={<Attributions></Attributions>}></PageContainer>
				<Controls></Controls>
			</div>
		</launcherContext.Provider>
	);
}

export default App;
