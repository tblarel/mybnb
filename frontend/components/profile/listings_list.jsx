import React from 'react';
import ListingIndexItem from './listing_index_item';

class ListingsList extends React.Component {

    constructor(props) {
        super(props);
    }

    render() {
        if (this.props.render === false) {
            return (<></>);
        } else if (Object.values(this.props.spots).length === 0) {
            return (
                <h1> No Listings Yet. </h1>
            )
        } else {
            return (
                <div className="bookings-list">
                    {Object.values(this.props.spots).map(spot => (
                        <ListingIndexItem
                            spot={spot}
                            key={spot.id}
                            ctx={this.props.ctx}
                        />
                    ))}
                </div>
            )
        }
    }
}

export default ListingsList;