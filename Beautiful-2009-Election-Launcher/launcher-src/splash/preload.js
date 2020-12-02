const ipcRenderer = require('electron').ipcRenderer;
const { EventEmitter } = require('events');
const manifest = require('../package.json');

const emitter = new EventEmitter();

ipcRenderer.on('splash-text', (sender, arg)=>{
    emitter.emit('splash-text', arg);
});

window.splash = {
    on: (ev,cb) => { emitter.on(ev, cb); },
    getState: () => { return ipcRenderer.sendSync("get-state"); },
    getVersion: () => { return manifest.version; }
};