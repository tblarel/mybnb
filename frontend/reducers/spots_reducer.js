import {
    RECEIVE_ALL_SPOTS,
    RECEIVE_A_SPOT
} from '../actions/spot_actions';


const spotsReducer = (state = {}, action) => {
    Object.freeze(state);
    switch (action.type) {
        case RECEIVE_ALL_SPOTS:
            return Object.assign({}, action.spots);
        case RECEIVE_A_SPOT:
            return Object.assign({}, action.spot);
        default:
            return state;
    }
};

export default spotsReducer;