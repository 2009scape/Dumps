import LauncherSettings from "./LauncherSettings";

export interface LauncherState {
    launchReady: boolean,
    gameRunning: boolean,
    statusText: String,
    launcherVisible: boolean,
    newsArticle: INewsArticle | null,

    launcherSettings: LauncherSettings,
    launcherDefaults: LauncherSettings,

    devMode: boolean,
    consoleLog: string[],
    launcherVersion: string,
    customPages: ICustomPage[],
}

export interface INewsArticle {
    title: String,
    content: String,
    excerpt: String,
    featuredImage: String,
    url: String,
}

export interface ICustomPage {
    name: string,
    url: string,
}

export default interface Mystic {
    playGame: Function,
    on(ev: String, callback: Function): void,
    isRunning(): boolean,
    openURL(url: String): void,
    getState(): LauncherState,
    updateSettings(settings: LauncherSettings): void,
    closeLauncher(): void,
};