import React from 'react';
import { withRouter, Link } from 'react-router-dom';
import DarkWelcomeContainer from '../welcome/dark_welcome_container';
import SpotIndexList from './spot_index_list';
import SpotMap from './spot_map';

class Search extends React.Component {

    constructor(props){
        
        super(props);
        let location;
        let lat = 37.77;
        let long = -122.41;
        if (this.props.location.state === undefined) {
            location = 'San Francisco, California';
        } else {
            location = this.props.location.state.loc;
            let coords = this.findLatAndLong(location);
            lat = coords[0];
            long = coords[1];
        }
        this.state = {
            loc: location,
            guests: '1',
            lat: lat,
            long: long
        };
        this.renderDropdowns = this.renderDropdowns.bind(this);
        this.updateLoc = this.updateLoc.bind(this);
        this.findLatAndLong = this.findLatAndLong.bind(this);
    }

    componentDidMount() {
        if (_.isEmpty(this.props.locations)) {
            this.props.findAllLocations();
        }
    }

    findLatAndLong(this_location) {
        let locations = Object.values(this.props.locations);
        let idx = -1;
        for (var i = 0; i < locations.length; i++) {
            if (locations[i].name === this_location) {
                idx = i;
            }
        } if (idx !== -1) {
            return ([locations[idx].lat, locations[idx].long])
        }  else {
            return ([0.0, 0.0])
        }
    }

    renderDropdowns(locations) {
        return (locations.map(location => {
            if (location.name !== this.state.loc)
                return (<option value={location.name}> {location.name} </option>)
            else
                return (<option value={location.name} selected="selected"> {location.name} </option>)
        }))
    }

    updateLoc(e) {
        let this_location = e.currentTarget.value;
        let coords = this.findLatAndLong(this_location);
        if (coords !== [0.0,0.0]) {
            this.setState({
                loc: this_location,
                lat: coords[0],
                long: coords[1]
            });
        } else {
            this.setState({
                loc: this_location,
            })
        }
    }


    render() {
            // debugger
            return(
                <div className="page-content-container">
                    <h1>hi</h1>
                    <header className="top-nav">
                        <Link to="/" className="header-link">
                            <div className="icon-color"></div>
                        </Link>
                        <div className="search-box-container">
                            <select className="search-box-spots" onChange={this.updateLoc}>
                                {this.renderDropdowns(Object.values(this.props.locations))}
                            </select>
                        </div>
                        <DarkWelcomeContainer />
                    </header>                        
                    <h1 id="search-spots">Search {this.state.loc} </h1>
                    <div className='two-half-container'>
                        <div className='left-half'>
                            <div className="spots-container">
                                <SpotIndexList spots={this.props.spots} />
                            </div>
                        </div>
                        <div className='right-half'>
                            <SpotMap spots={this.props.spots} 
                                    location={this.state.loc} 
                                    lat={this.state.lat} 
                                    long={this.state.long} 
                                    updateFilter={this.props.updateFilter}
                                    singleSpot={false} />
                        </div>
                    </div> 
                </div>
            );
           
    }

}

export default Search;