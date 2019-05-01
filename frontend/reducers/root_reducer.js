import { combineReducers } from 'redux';

import session from './session_reducer';
import entities from './entities_reducer';
import errors from './errors_reducer';
import ui from './ui_reducer';


const rootReducer = combineReducers({
    entities,
    session,
    errors,
    ui,
});

export default rootReducer;