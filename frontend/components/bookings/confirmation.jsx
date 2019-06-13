import React from 'react';
import { withRouter, Link } from 'react-router-dom';
import { logoutCurrentUser } from '../../actions/session_actions';


class Confirmation extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            num_bedrooms: 0,
            city: '',
            name: '',
            start_weekday: '',
            start_month: '',
            start_day: '',
            start_year: '',
            end_weekday: '',
            end_month: '',
            end_day: '',
            end_year: ''
        };
    }

    componentDidMount() {
        let modalEle = document.getElementsByClassName("modal-child");
        let backgroundEle = document.getElementsByClassName("modal-background");

        setTimeout(function () {
            console.log(`found  ${modalEle}`)
            modalEle[0].className += " visible";
        }, 0);
        setTimeout(function () {
            console.log(`found  ${backgroundEle}`);
            backgroundEle[0].className += " visible";
        }, 0);
    }

    componentDidUpdate(prevProps, prevState) {
        if(prevProps.bookings !== this.props.bookings) {
            this.setState({
                num_bedrooms: this.props.spots[this.props.bookings.spot_id].num_bedrooms,
                name: this.props.spots[this.props.bookings.spot_id].name,
                city: this.props.spots[this.props.bookings.spot_id].city,
                start_weekday: new Date(this.props.bookings.start).toString().split(' ')[0],
                start_month: new Date(this.props.bookings.start).toString().split(' ')[1],
                start_day: new Date(this.props.bookings.start).toString().split(' ')[2],
                start_year: new Date(this.props.bookings.start).toString().split(' ')[3],
                end_weekday: new Date(this.props.bookings.end).toString().split(' ')[0],
                end_month: new Date(this.props.bookings.end).toString().split(' ')[1],
                end_day: new Date(this.props.bookings.end).toString().split(' ')[2],
                end_year: new Date(this.props.bookings.end).toString().split(' ')[3]
            });
        }
    }

    render() {
        if (this.props.bookings) {
            return (
                <div className="booking-confirm-container">
                    <span class="close-button" onClick={this.props.closeModal}>&times;</span>
                    <video src="https://mybnb-seeds.s3-us-west-2.amazonaws.com/check_white.webm"
                        className="animation"  type="video/webm"
                        muted="muted" autoPlay="autoPlay">    
                    </video>
                    <h1>Your Reservation Is Confirmed!</h1>
                    <hr className="thin-line"></hr>
                    <h3 className="not-full-width">{this.props.currentUser.fname} {this.props.currentUser.lname},</h3>
                    <h3 className="not-full-width">Thanks for booking with <strong>MyBnB</strong>. Please review and save your reservation's details: </h3>
                    <div className="top-options name">
                        <h2>{this.state.name}</h2>
                    </div>
                    <div className="top-options city">
                        <h3><strong>{this.state.city}</strong></h3>
                    </div>
                    <div className="top-options">
                        <div className="block">
                            <h3><strong>Start Date:</strong></h3>
                            <h3>{this.state.start_weekday}, {this.state.start_month} {this.state.start_day}, {this.state.start_year} </h3>
                        </div>
                        <div className="block">
                            <h3><strong>End Date:</strong></h3>
                            <h3>{this.state.end_weekday}, {this.state.end_month} {this.state.end_day}, {this.state.end_year} </h3>
                        </div>
                    </div>
                    <div className="top-options">
                        <div className="block">
                            <h3><strong>Guests:</strong></h3>
                            <h3>{this.props.bookings.num_guest}</h3>
                        </div>
                        <div className="block">
                            <h3><strong>Bedrooms:</strong></h3>
                            <h3>{this.state.num_bedrooms}</h3>
                        </div>
                    </div>

                    <div className="row">
                        <Link to="/profile" onClick={() => this.props.closeModal()}>
                            Your Bookings
                        </Link>
                    </div>
                </div>
            );
        } else {
            return(
                <div className="booking-confirm-container">
                    <span class="close-button" onClick={this.props.closeModal}>&times;</span>
                    <h3>Loading...</h3>
                </div>
            );
        }
    }
};

export default withRouter(Confirmation);