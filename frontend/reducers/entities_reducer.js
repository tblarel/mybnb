import { combineReducers } from 'redux';
import users from './users_reducer';
import locations from './locations_reducer';
import spots from './spots_reducer';
import bookings from './bookings_reducer'

export default combineReducers({
    users,
    locations,
    spots,
    bookings
});
