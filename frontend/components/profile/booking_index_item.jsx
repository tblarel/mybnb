import React from 'react';
import moment from 'moment';
import Rater from 'react-rater'
import 'react-rater/lib/react-rater.css'

class BookingIndexItem extends React.Component {
    
    constructor(props) {
        super(props);  
        this.start_month = new Date(this.props.booking.start).toString().split(' ')[1];
        this.start_day = new Date(this.props.booking.start).toString().split(' ')[2];
        this.start_year = new Date(this.props.booking.start).toString().split(' ')[3];
        this.end_weekday = new Date(this.props.booking.end).toString().split(' ')[0];
        this.end_month = new Date(this.props.booking.end).toString().split(' ')[1];
        this.end_day = new Date(this.props.booking.end).toString().split(' ')[2];
        this.end_year = new Date(this.props.booking.end).toString().split(' ')[3];
        this.handleClick = this.handleClick.bind(this);
        this.handleReviewClick = this.handleReviewClick.bind(this);
        let past = this.checkPast(this.props.booking.end);
        this.state = {   
            past: past
        };
    }

    checkPast(date) {
        var checkDate = new moment(date);
        var currentDate = moment();
        if (checkDate._d < currentDate._d) {
            return true
        } else {
            return false;
        }
    }

    handleClick(e) {
        this.props.ctx.props.history.push({
            pathname: `/spots/${this.props.booking.spot_id}`
        });
    }

    handleReviewClick(e) {
        e.stopPropagation();
        let data = {
            spot_name: this.props.booking.spot_name,
            booking_id: this.props.booking.id,
            start: this.props.booking.start,
            end: this.props.booking.end,
            host_fname: this.props.booking.host_fname,
            host_lname: this.props.booking.host_lname,
            photo_url: this.props.booking.photo_url
        }
        this.props.postTempData(data);
        this.props.openModal('review');
    }

    render() {
        const { spot_name, start, end, host_fname, host_lname, num_guest, photo_url } = this.props.booking;
        let reviewButton, darkClass;
        if(this.state.past) {
            if(this.props.review) {
                reviewButton =  <div className="review-button">
                                    <Rater total={5} rating={this.props.review.rating} interactive={false} ></Rater>
                                </div>
            } else {
                reviewButton = <div className="review-button" onClick={this.handleReviewClick}>Review Your Stay</div>
            }
            darkClass = ' darkened-img';
        }
        return(
            <div className="spot-item" onClick={this.handleClick}>
                <div className="spot-details-line top">
                    <h4 className="centered">{spot_name}</h4>
                </div>
                <div className={"spot-img " + darkClass}
                    style={{ backgroundImage: `url(${photo_url})` }}>
                </div>
                <div className="spot-details-line bottom">
                    <p><strong>Host:  </strong> {host_fname} {host_lname}</p>
                    <p><strong>Guests:  </strong>  {num_guest}</p>
                </div>
                <div className="from bottom">
                    <p><strong>From:</strong></p>
                    <p><strong>To:</strong></p>
                </div>
                <div className="labelline bottom">
                    <p>{this.start_month} / {this.start_day} / {this.start_year} </p>
                    <p>{this.end_month} / {this.end_day} / {this.end_year} </p>
                </div>
                <div className="review-button-row">
                    {reviewButton}
                </div>

            </div>
        )
    }
}

export default BookingIndexItem;