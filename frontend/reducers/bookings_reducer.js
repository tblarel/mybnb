import {
    CREATE_BOOKING,
    RECEIVE_BOOKING,
    RECEIVE_BOOKINGS
} from '../actions/booking_actions';


const bookingsReducer = (state = {}, action) => {
    Object.freeze(state);
    switch (action.type) {
        case CREATE_BOOKING:
            return Object.assign({}, action.booking);
        case RECEIVE_BOOKING:
            return Object.assign({}, action.booking);
        case RECEIVE_BOOKINGS:
            return Object.assign({}, action.bookings);
        default:
            return state;
    }
};

export default bookingsReducer;