import { connect } from 'react-redux';
import { signupUser } from '../../actions/session_actions';
import React from 'react';
import { Link } from 'react-router-dom';
import { openModal, closeModal } from '../../actions/modal_actions';


import  Signup  from './signup';


const mapStateToProps = ({errors}) => {
    return {
        errors: errors.session,
        formType: 'Sign Up',
    }
}

const mapDispatchToProps = dispatch => {
    return {
        processForm: (user) => dispatch(signupUser(user)),
        otherForm: (
            <button className="modal-switch" type='button' onClick={() => dispatch(openModal('login'))}>
                Already have an account?
            </button>
        ),
    };
};
export default connect(mapStateToProps, mapDispatchToProps)(Signup);
