import React from 'react';
import { withRouter, Link } from 'react-router-dom';
import DarkWelcomeContainer from '../welcome/dark_welcome_container';
import SpotIndexItem from './spot_index_item';
import SpotIndexList from './spot_index_list';
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
        // this.renderSpots = this.renderSpots.bind(this);
        this.renderOptions = this.renderOptions.bind(this);
        this.renderDropdowns = this.renderDropdowns.bind(this);
        this.updateLoc = this.updateLoc.bind(this);
        this.filterSpotsByLocation = this.filterSpotsByLocation.bind(this);

    }

    componentDidMount() {
        debugger
        this.props.findAllSpots();
        if (_.isEmpty(this.props.locations) ) {
            this.props.findAllLocations();
        }
        this.filterSpotsByLocation();

    }

    componentDidUpdate(prevProps, prevState) {
        debugger
        if (prevProps.spots !== this.props.spots) {
            this.setState({
                currentlyDisplayed: this.props.spots
            });
        }
        // this.filterSpotsByLocation();
        // }else if (prevState.currentlyDisplayed !== this.state.currentlyDisplayed) {
        //     this.filterSpotsByLocation();
        // }
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


    // renderSpots() {
    //     return (
    //         Object.values(this.state.currentlyDisplayed).map(spot => (
    //             <SpotIndexItem
    //                 spot={spot}
    //                 key={spot.id}
    //             />
    //         ))
    //     )
    // }

    renderDropdowns(locations) {
        return( locations.map( location => {
            if(location.name !== this.state.location)
                return (<option value={location.name}> {location.name} </option>)
            else
                return (<option value={location.name} selected="selected"> {location.name} </option>)
        }))
    }

    renderOptions() {
        return(
            <div>
                <select className="search-box" onChange={this.updateLoc}>
                    {this.renderDropdowns(Object.values(this.props.locations))}
                </select>
            </div>
        );
    }

    updateLoc(e) {      
        let newList = filter(this.props.spots,
            spot => spot.city.toLowerCase().includes(e.currentTarget.value.toLowerCase()));
        
        this.setState({
                currentlyDisplayed: newList,
                location: e.currentTarget.value
        });
        // this.filterSpotsByLocation();
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
                        { this.renderOptions() }
                    </div>
                    <div className="spots-container">
                        <SpotIndexList currentList={this.state.currentlyDisplayed} />
                        {/* { this.renderSpots() } */}
                    </div>
                </div>
            </div>
        );
    }
}

export default withRouter(SpotsIndex);