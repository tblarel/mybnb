import { connect } from 'react-redux';
import React from 'react';
import { Link } from 'react-router-dom';
import Profile from './profile';
import { fetchUserBookings } from '../../actions/booking_actions';

const mapStateToProps = ({ session, entities: { users, bookings } }) => {
    return {
        currentUser: users[session.id],
        bookings: bookings
    };
};

const mapDispatchToProps = dispatch => {
    return {
        fetchUserBookings: () => dispatch(fetchUserBookings())
    };
};

export default connect(mapStateToProps, mapDispatchToProps)(Profile);
