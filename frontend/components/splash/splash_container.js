import { connect } from 'react-redux';
import React from 'react';
import { Link } from 'react-router-dom';
import  Splash  from './splash';

const mapStateToProps = ({ errors, session, entities: { users } }) => {
    return {
        currentUser: users[session.id],
        errors: errors
    };
};

const mapDispatchToProps = dispatch => {
    return {
    };
};

export default connect(null, null)(Splash);
