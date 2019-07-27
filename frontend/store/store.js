import { createStore, applyMiddleware } from 'redux';
import thunk from 'redux-thunk';
import logger from 'redux-logger';

import rootReducer from '../reducers/root_reducer';



const configureStore = (preloadedState = {}) => {
    let middleware = [thunk];
    if (process.env.NODE_ENV !== 'production') {
        middleware = [...middleware];
    }
    return createStore(
        rootReducer,
        preloadedState,
        applyMiddleware(...middleware,logger)
    );
};

export default configureStore;
