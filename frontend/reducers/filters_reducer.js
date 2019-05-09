import merge from 'lodash/merge';

import { UPDATE_FILTER } from '../actions/filter_actions';

const defaultFilters = Object.freeze({
    bounds: {},
    minGuest: 1,
    maxGuest: 12,
    minPrice: 0,
    maxPrice: 999,
});

const filtersReducer = (state = defaultFilters, action) => {
    Object.freeze(state);
    if (action.type === UPDATE_FILTER) {
        const newFilter = {
            [action.filter]: action.value
        };
        return merge({}, state, newFilter);
    } else {
        return state;
    }
};

export default filtersReducer;
