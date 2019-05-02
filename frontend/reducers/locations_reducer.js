import {
    RECEIVE_ALL_LOCATIONS,
} from '../actions/location_actions';


const locationsReducer = (state = {}, action) => {
    Object.freeze(state);
    switch(action.type) {
        case RECEIVE_ALL_LOCATIONS:
            return Object.assign( {}, action.locations );
        default:
            return state;
    }
};

export default locationsReducer;