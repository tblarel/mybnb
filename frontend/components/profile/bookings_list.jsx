import React from 'react';
import BookingIndexItem from './booking_index_item';

class BookingsList extends React.Component {
    
    constructor(props) {
        super(props);
    }

    render() {
        if(this.props.render === false) {
            return(<></>);
        } else if (Object.values(this.props.bookings).length === 0) {
            return(
                <h1> No Bookings Yet. </h1>
            )
        } else {
            return(
                <div className="bookings-list">
                    {Object.values(this.props.bookings).map(booking => (
                        <BookingIndexItem
                            booking={booking}
                            key={booking.id}
                            ctx={this.props.ctx}
                            review={this.props.reviews[booking.id]}
                            openModal={this.props.openModal}
                            postTempData={this.props.postTempData}
                        />
                    ))}
                </div>
            )
        }
    }
}

export default BookingsList;