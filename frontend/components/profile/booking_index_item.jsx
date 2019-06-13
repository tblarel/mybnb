import React from 'react';

class BookingIndexItem extends React.Component {
    
    constructor(props) {
        super(props);
        
        this.start_month = new Date(this.props.booking.start).toString().split(' ')[1],
        this.start_day = new Date(this.props.booking.start).toString().split(' ')[2],
        this.start_year = new Date(this.props.booking.start).toString().split(' ')[3],
        this.end_weekday = new Date(this.props.booking.end).toString().split(' ')[0],
        this.end_month = new Date(this.props.booking.end).toString().split(' ')[1],
        this.end_day = new Date(this.props.booking.end).toString().split(' ')[2],
        this.end_year = new Date(this.props.booking.end).toString().split(' ')[3]
    }

    render() {
        const { name, start, end, host_fname, host_lname, num_guest, photo_url } = this.props.booking;
        return(
            <div className="spot-item" >
                <div className="spot-img"
                    style={{ backgroundImage: `url(${photo_url})` }}>
                </div>
                <div className="features">
                    <h3>{name} </h3>
                </div>
                <div className="spot-details-line ">
                    <p><strong>Host:  </strong> {host_fname} {host_lname}</p>
                    <p><strong>Guests:  </strong>  {num_guest}</p>
                </div>
                <div className="labelline">
                    <p><strong>From:</strong></p>
                    <p><strong>To:</strong></p>
                </div>
                <div className="labelline">
                    <p>{this.start_month} / {this.start_day} / {this.start_year} </p>
                    <p>{this.end_month} / {this.end_day} / {this.end_year} </p>
                </div>

            </div>
        )
    }
}

export default BookingIndexItem;