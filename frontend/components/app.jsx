// React Dependencies
import React from 'react';
import { Provider } from 'react-redux';
import {
    Route,
    Redirect,
    Switch,
    Link,
    HashRouter
} from 'react-router-dom';

import Modal from './modal/modal';
import SignupContainer from './session/signup_container';
import LogInContainer from './session/login_container';
import SplashContainer from './splash/splash_container';
import WelcomeContainer from './welcome/welcome_container';
import SpotsContainer from './spots/spots_container';
import SpotShowContainer from './spots/spot_show_container';
import LocationsContainer from './locatons/locations_container';
import { AuthRoute, ProtectedRoute } from '../util/route_util';
import 'react-dates/initialize';
import 'react-dates/lib/css/_datepicker.css';
import '../../app/assets/stylesheets/api/react_dates_overrides.css';
import search_container from './spots/search_container';

const App = () => (
    <div id="app">
        <Modal />
        {/* <header>
            <Link to="/" className="header-link">
                
                <div className="icon"></div>
            </Link>
            <WelcomeContainer />
        </header> */}
        <Switch>
            <Route exact path="/spots" component={SpotsContainer} />
            <Route exact path="/locations" component={LocationsContainer} />
            <Route exact path="/spots/:id" component={SpotShowContainer} />
            <Route exact path="/spots" component={SpotsContainer} />
            <Route path="/search" component={search_container} />

            <AuthRoute exact path="/signup" component={SignupContainer} />
            <AuthRoute exact path="/login" component={LogInContainer} />
            <Route path="/" component={SplashContainer} />
        </Switch>
    </div>
);

export default App;