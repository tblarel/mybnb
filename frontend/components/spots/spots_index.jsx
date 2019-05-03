import React from 'react';
import { withRouter, Link } from 'react-router-dom';
import DarkWelcomeContainer from '../welcome/dark_welcome_container';
import SpotIndexItem from './spot_index_item';
import { filter } from 'lodash';

class SpotsIndex extends React.Component {
    constructor(props) {
        super(props);
        let location;
        if (this.props.location.state === undefined){
            location = ''
        } else {
            location = this.props.location.state.loc
        }
        this.state = {
            searchTerm: '',
            currentlyDisplayed: this.props.spots,
            location: location
        };
        this.renderSpots = this.renderSpots.bind(this);
        this.filterSpotsByLocation = this.filterSpotsByLocation.bind(this);

    }

    componentDidMount() {
        this.props.findAllSpots();
    }

    componentDidUpdate(prevProps, prevState) {
        if (prevProps.spots !== this.props.spots) {
            this.setState({
                currentlyDisplayed: this.props.spots
            });
            this.filterSpotsByLocation();
        }
    }

    filterSpotsByLocation() {
        let newList;
        if (this.state.location === '') {
            newList = this.props.spots;
        } else {
            newList = filter(this.props.spots,
                spot => spot.city.toLowerCase().includes(this.state.location.toLowerCase()));
        }
        this.setState({
            currentlyDisplayed: newList
        });
    }


    renderSpots() {
        return (
            Object.values(this.state.currentlyDisplayed).map(spot => (
                <SpotIndexItem
                    spot={spot}
                    key={spot.id}
                />
            ))
        )
    }
    
    render() {
        return (
            <div className="content-container">
                <header className="top-nav">
                    <Link to="/" className="header-link">
                        <div className="icon-color"></div>
                    </Link>
                    <DarkWelcomeContainer />
                </header>
                <div className="locations-page">
                    <div className="page-search">
                        <h1 id="search-spots">Search {this.state.location} </h1>
                        <input className="search-box" value={this.state.searchTerm} placeholder="Search"></input>
                        {/* <select></select> */}
                    </div>
                    <div className="locations-container">
                        {this.renderSpots()}
                    </div>
                </div>
            </div>
        );
    }
}

export default withRouter(SpotsIndex);