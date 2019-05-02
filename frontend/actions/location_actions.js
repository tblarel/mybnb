import * as APIUtil from '../util/location';


export const RECEIVE_LOCATION = 'RECEIVE_CURRENT_USER';
export const FETCH_LOCATION = 'FETCH_ALL_LOCATIONS';

export const FETCH_ALL_LOCATIONS = 'FETCH_ALL_LOCATIONS';
export const RECEIVE_ALL_LOCATIONS = 'RECEIVE_ALL_LOCATIONS';


export const receiveAllLocations = locations => ({
    type: RECEIVE_ALL_LOCATIONS,
    locations
});


export const fetchAllLocations = () => dispatch => {
    APIUtil.fetchLocations()
        .then( locations => dispatch(receiveAllLocations(locations)))
}