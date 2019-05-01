import { connect } from 'react-redux';
import { signupUser } from '../../actions/session_actions';
import React from 'react';
import { Link } from 'react-router-dom';


import  Signup  from './signup';


const mapStateToProps = ({errors}) => {
    return {
        errors: errors.session,
        formType: 'Sign Up',
        navLink : <Link to="/login"> Already have an account? <br/> Log in Instead</Link>
    }
}

const mapDispatchToProps = dispatch => {
    return {
        processForm: (user) => dispatch(signupUser(user)),
    };
};
export default connect(mapStateToProps, mapDispatchToProps)(Signup);
