import React from 'react';
import { withRouter } from 'react-router-dom';

class Splash extends React.Component {
    constructor(props) {
        super(props);
    }

    render() {
        return(
            <div class = "splash-page">
                <h1> Say hello to myBnb </h1>
            </div>
        );
    }
}

export default Splash;


