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
                <header>
                    <Link to="/" className="header-link">
                        <div className="icon-color"></div>
                    </Link>
                    <DarkWelcomeContainer />
                </header>
                <div className="locations-page">
                    <h1>Test Locations Page</h1>
                    
                    {Object.values(this.props.locations).map(location => (
                        <LocationIndexItem
                            loc={location}
                            key={location.id}
                        />
                    ))} 
                </div>
            </div>
        );
    }
 }

 export default withRouter(LocationsIndex);