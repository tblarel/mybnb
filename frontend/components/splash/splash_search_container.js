import { connect } from 'react-redux';
import React from 'react';
import { Link, withRouter} from 'react-router-dom';
import { updateFilter } from '../../actions/filter_actions';
import SplashSearch from './splash_search';


const mapStateToProps = ({ errors, session, entities: { users }, ui }) => {
    return {
        currentUser: users[session.id],
        minGuest: ui.filters.minGuest,
        minPrice: ui.filters.minPrice,
        maxPrice: ui.filters.maxPrice,
    };
};

const mapDispatchToProps = dispatch => {
    return {
        updateFilter: (filter, value) => dispatch(updateFilter(filter, value)),
    };
};

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(SplashSearch));
