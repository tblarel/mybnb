import * as APIUtil from '../util/spot';

export const RECEIVE_A_SPOT = 'RECEIVE_A_SPOT';
export const FETCH_SPOT = 'FETCH_SPOT';

export const RECEIVE_ALL_SPOTS = 'RECEIVE_ALL_SPOTS';
export const FETCH_ALL_SPOTS = 'FETCH_ALL_SPOTS';

export const receiveAllSpots = spots => ({
    type: RECEIVE_ALL_SPOTS,
    spots
});

export const receiveASpot = spot => ({
    type: RECEIVE_A_SPOT,
    spot
});

export const fetchAllSpots = filters => dispatch => {
    APIUtil.fetchSpots(filters)
        .then( spots => dispatch(receiveAllSpots(spots)));
}

export const fetchASpot = id => dispatch => {
    APIUtil.fetchSpot(id)
        .then(spot => dispatch(receiveASpot(spot)));
}

export const fetchUserSpots = id => dispatch => {
    APIUtil.fetchUserSpots(id)
        .then( spots => dispatch(receiveAllSpots(spots)));
}