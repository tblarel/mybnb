import {
    RECEIVE_ALL_SPOTS,
} from '../actions/spot_actions';


const spotsReducer = (state = {}, action) => {
    Object.freeze(state);
    switch (action.type) {
        case RECEIVE_ALL_SPOTS:
            return Object.assign({}, action.spots);
        default:
            return state;
    }
};

export default spotsReducer;