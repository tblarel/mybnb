import * as APIUtil from '../util/review';

export const RECEIVE_REVIEW = 'RECEIVE_REVIEW';
export const RECEIVE_REVIEWS = 'RECEIVE_REVIEWS';
export const CREATE_REVIEW = 'CREATE_REVIEW';

export const receiveReview = review => ({
    type: RECEIVE_REVIEW,
    review
});

export const receiveReviews = reviews => ({
    type: RECEIVE_REVIEWS,
    reviews
});

export const createReview = review => ({
    type: CREATE_REVIEW,
    review
});

export const createAReview = review => dispatch => (
    APIUtil.createReview(review).then(reviews => (
        dispatch(receiveReviews(reviews))
    ))
);

export const fetchGuestReviews = user_id => dispatch => (
    APIUtil.fetchGuestReviews(user_id).then(reviews => (
        dispatch(receiveReviews(reviews))
    ))
);

export const fetchSpotReviews = spot_id => dispatch => (
    APIUtil.fetchSpotReviews(spot_id).then(reviews => (
        dispatch(receiveReviews(reviews))
    ))
);

export const fetchHostReviews = user_id => dispatch => (
    APIUtil.fetchHostReviews(user_id).then(reviews => (
        dispatch(receiveReviews(reviews))
    ))
);