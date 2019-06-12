import { connect } from 'react-redux';
import React from 'react';
import { Link } from 'react-router-dom';
import Confirmation from './confirmation';
import { openModal, closeModal } from '../../actions/modal_actions';

const mapStateToProps = ({ session, entities: { bookings, users, spots} }) => {
    return {
        formType: 'Confirmation',
        bookings: bookings,
        currentUser: users[session.id],
        spots
    };
};

const mapDispatchToProps = dispatch => {

    return {
        closeModal: () => dispatch(closeModal())
    };
};

export default connect(mapStateToProps, mapDispatchToProps)(Confirmation);
