import React from 'react';
import {withRouter, Link} from 'react-router-dom';
import DarkWelcomeContainer from '../welcome/dark_welcome_container';
import LocationIndexItem from './location_index_item';
import { filter} from 'lodash';


class LocationsIndex extends React.Component {
    
    constructor(props) {
        super(props);
        this.props.findAllLocations();
        this.state = {
            searchTerm: '',
            currentlyDisplayed: this.props.locations
        };
        this.update = this.update.bind(this);
        this.renderLocations = this.renderLocations.bind(this);
    }

    componentDidMount() {
        this.props.findAllLocations();
        this.setState ({
            currentlyDisplayed: this.props.locations
        });
    }

    update(e) {
        $("html, body").animate({scrollTop: 0}, 'fast'); // Scroll User to top of page
        let newList;
        if (e.currentTarget.value=== '') {
            newList = this.props.locations;
        } else {
            newList = filter(this.props.locations, 
            location => location.name.toLowerCase().includes(e.currentTarget.value.toLowerCase()));
        }
           
        this.setState({
            [e.target.name]: e.currentTarget.value,
            currentlyDisplayed: newList
        });

    }

    renderLocations() {
       return(
           Object.values(this.state.currentlyDisplayed).map(location => (
               <LocationIndexItem
                   loc={location}
                   key={location.id}
               />
           ))

       )
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
                        <input className="search-box" name="searchTerm" onChange={this.update} value={this.state.searchTerm} placeholder="Search"></input>
                    </div>
                    <div className="locations-container">
                        {this.renderLocations()}
                    </div>
                </div>
            </div>
        );
    }
 }

 export default withRouter(LocationsIndex);