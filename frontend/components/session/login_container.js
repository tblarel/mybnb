import { connect } from 'react-redux';
import React from 'react';
import { Link } from 'react-router-dom';
import { loginUser } from '../../actions/session_actions';
import Login from './login';
import { openModal, closeModal } from '../../actions/modal_actions';

const mapStateToProps = ({ errors }) => {
    return {
        errors: errors.session,
        formType: 'Login',
    };
};

const mapDispatchToProps = dispatch => {
    
    return {
        processForm: (user) => dispatch(loginUser(user)),
        otherForm: (
            <button className="modal-switch" type='button' onClick={() => dispatch(openModal('signup'))}>
                Don't have an account yet?
            </button>
        ),
        closeModal: () => dispatch(closeModal())
    };
};

export default connect(mapStateToProps, mapDispatchToProps)(Login);
