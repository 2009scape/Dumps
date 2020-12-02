import React  from 'react';

function BadEnv(){
    return (
        <div style={{
            backgroundColor: "rgb(231,76,60)",
            width:"100vw",
            height: "100vh",
            position:"fixed",
            left:0,
            top:0,
            color: "white",
            textAlign: "center",
        }}>
            <h1>Bad Environment</h1>
            This React app is not intended to run under this environment!
        </div>
    );
}

export default BadEnv;