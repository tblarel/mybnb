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
// import { AuthRoute, ProtectedRoute } from '../util/route_util';


import SignupContainer from './session/signup_container';
import LogInContainer from './session/login_container';
import SplashContainer from './splash/splash_container';

import WelcomeContainer from './welcome/welcome_container';

const App = () => (
    <div>
        <header>
            <Link to="/" className="header-link">
                <div className="icon"></div>
            </Link>
            <WelcomeContainer />
        </header>
        <Switch>
            <Route path="/signup" component={SignupContainer}></Route>
            <Route path="/login" component={LogInContainer}></Route>
            <Route path="/" component={SplashContainer} />
        </Switch>
    </div>
);

export default App;