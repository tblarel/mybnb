import React from 'react';
import { withRouter, Link } from 'react-router-dom';
import DarkWelcomeContainer from '../welcome/dark_welcome_container';
import BookingsList from './bookings_list';

class Profile extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            bookings: true,
            listings: false,
            listings_list: {},
            bookings_list: {},
        }
        this.handleClick = this.handleClick.bind(this);
    }

    handleClick(e) {
        if (!Array.from(e.currentTarget.classList).includes("inactive")) {
            let other_button = document.getElementsByClassName("inactive");
            other_button[0].classList.toggle("inactive");
            e.currentTarget.classList.toggle("inactive");
            if (e.currentTarget.innerText.includes("Listings")) {
                this.setState ({
                    listings: true,
                    bookings: false
                });
            } else {
                this.setState({
                    listings: false,
                    bookings: true
                });
            }
        } 
    }

    componentDidUpdate(prevProps, prevState) {
        if(prevProps.bookings !== this.props.bookings) {
            this.setState({
                bookings_list: this.props.bookings
            });
        }
    }

    componentDidMount() {
        this.props.fetchUserBookings(this.props.currentUser.id);
    }

    render() {
        if(this.props.currentUser) {
            return(
            <div className="page-content-container">
                <h1>hi</h1>
                <header className="top-nav">
                    <Link to="/" className="header-link">
                        <div className="icon-color"></div>
                    </Link>
                    <DarkWelcomeContainer/>
                </header>
                <div className="profile">
                    <div className="row">
                            <div className="profile-img" style={{ backgroundImage: `url(${this.props.currentUser.image_url})` }}>
                            </div>
                            <div className='right'>
                                    <h1 className='full-width'>Hello {this.props.currentUser.fname} {this.props.currentUser.lname}</h1><br></br>
                                <h4 className='full-width'>joined on {' '}
                                    {new Date(this.props.currentUser.created_at).toDateString()}
                                </h4>
                            </div>
                    </div>
                    <div className="row">
                        <div className="toggle inactive" onClick={this.handleClick}>Your Bookings</div>
                        <div className="toggle" onClick={this.handleClick}>Your Listings</div>
                    </div>
                    <div className="row">
                        {/* <ListingsList render={this.state.listings} /> */}
                        <BookingsList   
                            render={this.state.bookings} 
                            bookings={this.state.bookings_list} 
                        />
                    </div>
                </div>
            </div>
            )
        } else {
            return(
                <>{this.props.history.push('/')}</>
            );
        }
    }
}

export default Profile