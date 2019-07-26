import {
    CREATE_REVIEW,
    RECEIVE_REVIEW,
    RECEIVE_REVIEWS
} from '../actions/review_actions';


const bookingsReducer = (state = {}, action) => {
    Object.freeze(state);
    switch (action.type) {
        case CREATE_REVIEW:
            return Object.assign({}, action.review);
        case RECEIVE_REVIEW:
            return Object.assign({}, action.review);
        case RECEIVE_REVIEWS:
            return Object.assign({}, action.reviews);
        default:
            return state;
    }
};

export default reviewsReducer;