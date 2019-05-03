import React from 'react';
import {withRouter, Link} from 'react-router-dom';
import DarkWelcomeContainer from '../welcome/dark_welcome_container';
import LocationIndexItem from './location_index_item';

class LocationsIndex extends React.Component {
    
    constructor(props) {
        super(props);
        this.state = {
            locations: []
        };
    }

    componentDidMount() {
        this.props.findAllLocations();
    }



    render() {
        
        return(
            <div className="content-container">
                <header className="top-nav">
                    <Link to="/" className="header-link">
                        <div className="icon-color"></div>
                    </Link>
                    <DarkWelcomeContainer />
                </header>
                <div className="locations-page">
                    <div className="page-search">
                        <h1>Where to?</h1>
                        <input className="search-box" value="Search"></input>
                    </div>
                    <div class="locations-container">
                        {Object.values(this.props.locations).map(location => (
                            <LocationIndexItem
                                loc={location}
                                key={location.id}
                            />
                        ))} 
                    </div>
                </div>
            </div>
        );
    }
 }

 export default withRouter(LocationsIndex);