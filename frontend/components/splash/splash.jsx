import React from 'react';
import { withRouter } from 'react-router-dom';
import WelcomeContainer from '../welcome/welcome_container';
import { Link } from 'react-router-dom';
import SplashSearchContainer from './splash_search_container';

class Splash extends React.Component {
    constructor(props) {
        super(props);
        this.state = {

        }
    }

    componentDidMount() {
        this.props.findAllLocations();
    }


    render() {
        if(this.props.locations === undefined || this.props.locations.length === 0) {
            return( <h1>Loading...</h1>)
        } else {
            return(
                        <div className="content-container">
                            <header>
                                <Link to="/" className="header-link">
                                    <div className="icon-white"></div>
                                </Link>
                                <WelcomeContainer />
                            </header>
                            <div className="splash-page">
                                <SplashSearchContainer locations={this.props.locations}/>
                            </div>
                        </div>
                    );
        }    
    }
}

export default Splash;


