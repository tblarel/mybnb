import {
    RECEIVE_TEMP_DATA,
} from '../actions/temp_actions';


const tempReducer = (state = {}, action) => {
    Object.freeze(state);
    switch (action.type) {
        case RECEIVE_TEMP_DATA:
            return Object.assign({}, action.data);
        default:
            return state;
    }
};

export default tempReducer;