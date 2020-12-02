import React from 'react';

function PageContainer(props: { visible: boolean, content: JSX.Element }) {
    return (
        <div className="pageContainer" style={{ display: ( props.visible === true ? "" : "none" ) }}>{props.content}</div>
    );
}

export default PageContainer;