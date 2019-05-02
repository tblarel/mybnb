import { connect } from 'react-redux';
import React from 'react';
import { Link, withRouter} from 'react-router-dom';
import SplashSearch from './splash_search';


const mapStateToProps = ({ errors, session, entities: { users } }) => {
    return {
        currentUser: users[session.id],
    };
};

const mapDispatchToProps = dispatch => {
    return {
    };
};

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(SplashSearch));
