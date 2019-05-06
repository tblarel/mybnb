import React from 'react';
import { withRouter } from 'react-router-dom';
import SpotIndexItem from './spot_index_item';
import { filter } from 'lodash';

class SpotIndexList extends React.Component {

    constructor(props) {
        super(props);
        this.state = {
    
        };
        this.filterByLocations = this.filterByLocations.bind(this);

    }

    componentDidUpdate(prevProps, prevState) {
        if (prevProps.spots !== this.props.spots) {
            this.filterByLocations()
        } else if (prevProps.currentLoc !== this.props.currentLoc || prevProps.guests !== this.props.guests) {
            this.filterbyAll()
        }  
    }

    filterbyAll() {
        debugger
        let newList;
        if (this.props.currentLoc === '') {
            newList = this.props.spots;
        } else {
            newList = filter(this.props.spots,
                spot => spot.city.toLowerCase().includes(this.props.currentLoc.toLowerCase()));
        } if (this.props.guests == 1) {
            this.setState({
                currentlyDisplayed: newList
            });
        } else {
            newList = filter(newList,
                spot => spot.num_guest >= this.props.guests);
        }
        this.setState({
            currentlyDisplayed: newList
        });
        
    }   

    filterByLocations() {
        let newList;
        if (this.props.currentLoc === '') {
            newList = this.props.spots;
        } else {
            newList = filter(this.props.spots,
                spot => spot.city.toLowerCase().includes(this.props.currentLoc.toLowerCase()));
        }
        this.setState({
            currentlyDisplayed: newList
        });
    }


    render() {
        debugger
        if(this.state.currentlyDisplayed !== undefined ) {
            if (Object.keys(this.state.currentlyDisplayed).length >= 1) {
                return(       
                    Object.values(this.state.currentlyDisplayed).map(
                        spot => (
                            <SpotIndexItem
                                spot={spot}
                                key={spot.id}/>
                    ))
                )
            } else {
                debugger
                return(
                    <h1>Sorry, no homes are currently available in {this.props.currentLoc} that match your criteria.</h1>
                )
            }
        } else {
            return (
                <h1>Loading...</h1>
            )
        }
        
    }
}   

export default withRouter(SpotIndexList);
