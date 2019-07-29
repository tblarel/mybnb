import { connect } from 'react-redux';
import React from 'react';
import { Link } from 'react-router-dom';
import Profile from './profile';
import { fetchUserBookings } from '../../actions/booking_actions';
import { fetchUserSpots } from '../../actions/spot_actions';
import { postTempData } from '../../actions/temp_actions';
import { openModal } from '../../actions/modal_actions';


const mapStateToProps = ({ session, entities: { users, bookings, spots } }) => {
    return {
        currentUser: users[session.id],
        bookings: bookings,
        spots: spots
    };
};

const mapDispatchToProps = dispatch => {
    return {
        fetchUserBookings: (user_id) => dispatch(fetchUserBookings(user_id)),
        fetchUserSpots: (user_id) => dispatch(fetchUserSpots(user_id)),
        openModal: modal => dispatch(openModal(modal)),
        postTempData: data => dispatch(postTempData(data)),
    };
};

export default connect(mapStateToProps, mapDispatchToProps)(Profile);
