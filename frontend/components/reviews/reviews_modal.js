import { connect } from 'react-redux';
import React from 'react';
import { Link } from 'react-router-dom';
import Review from './review';
import { openModal, closeModal } from '../../actions/modal_actions';
import { createAReview } from '../../actions/review_actions';
const mapStateToProps = ({ session, entities: { bookings, users, spots }, ui:{temp} }) => {
    return {
        formType: 'Review',
        bookings: bookings,
        currentUser: users[session.id],
        data: temp
    };
};

const mapDispatchToProps = dispatch => {

    return {
        closeModal: () => dispatch(closeModal()),
        createAReview: review => dispatch(createAReview(review))
    };
};

export default connect(mapStateToProps, mapDispatchToProps)(Review);
