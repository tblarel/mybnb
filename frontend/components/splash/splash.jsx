import React from 'react';
import { withRouter } from 'react-router-dom';
import WelcomeContainer from '../welcome/welcome_container';
import { Link } from 'react-router-dom';
import SplashSearchContainer from './splash_search_container';

class Splash extends React.Component {
    constructor(props) {
        super(props);
    }

    render() {
        return(
            <div className="content-container">
                <header>
                    <Link to="/" className="header-link">
                        <div className="icon-white"></div>
                    </Link>
                    <WelcomeContainer />
                </header>
                <div className="splash-page">
                    <SplashSearchContainer />
                </div>
            </div>
        );
    }
}

export default Splash;


