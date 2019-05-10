import { connect } from 'react-redux';
import React from 'react';
import { Link } from 'react-router-dom';
import  Splash  from './splash';
import { fetchAllLocations } from '../../actions/location_actions';

const mapStateToProps = ({ errors, session, entities: { users, locations } }) => {
    return {
        currentUser: users[session.id],
        errors: errors,
        locations: locations
    };
};

const mapDispatchToProps = dispatch => {
    return {
        findAllLocations: () => dispatch(fetchAllLocations())
    };
};

export default connect(mapStateToProps, mapDispatchToProps)(Splash);
