import { connect } from 'react-redux';
import React from 'react';
import { Link } from 'react-router-dom';
import { openModal, closeModal } from '../../actions/modal_actions';

const mapStateToProps = ({ ui: { temp } }) => {
    return {
        formType: 'Photos',
        photos: temp,
    };
};

const mapDispatchToProps = dispatch => {

    return {
        closeModal: () => dispatch(closeModal()),
    };
};

export default connect(mapStateToProps, mapDispatchToProps)(Photos);
