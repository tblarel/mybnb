import React from 'react';
import { withRouter } from 'react-router-dom';
import SpotIndexItem from './spot_index_item';
import { filter } from 'lodash';

class SpotIndexList extends React.Component {

    constructor(props) {
        super(props);
        this.state = {
            spotList: []
        }
        this.filterByLocations = this.filterByLocations.bind(this);

    }

    componentDidUpdate(prevProps, prevState) {
        if (prevProps.spots !== this.props.spots) {
            this.filterByLocations()
        } else if (prevProps.currentLoc !== this.props.currentLoc) {
            this.filterByLocations()
        }  
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
        if(this.state.currentlyDisplayed != undefined) {
            return(       
                Object.values(this.state.currentlyDisplayed).map(
                    spot => (
                        <SpotIndexItem
                            spot={spot}
                            key={spot.id}/>
                ))
            )
        } else {
            return (
                <h1></h1>
            )
        }
        
    }
}   

export default withRouter(SpotIndexList);
