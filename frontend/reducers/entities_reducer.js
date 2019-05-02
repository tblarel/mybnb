import { combineReducers } from 'redux';
import users from './users_reducer';
import locations from './locations_reducer';

export default combineReducers({
    users,
    locations
});
