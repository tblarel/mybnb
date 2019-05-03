import * as APIUtil from '../util/spot';

export const RECEIVE_SPOT = 'RECEIVE_SPOT';
export const FETCH_SPOT = 'FETCH_SPOT';

export const RECEIVE_ALL_SPOTS = 'RECEIVE_ALL_SPOTS';
export const FETCH_ALL_SPOTS = 'FETCH_ALL_SPOTS';

export const receiveAllSpots = spots => ({
    type: RECEIVE_ALL_SPOTS,
    spots
});

export const fetchAllSpots = () => dispatch => {
    APIUtil.fetchSpots()
        .then( spots => dispatch(receiveAllSpots(spots)));
}