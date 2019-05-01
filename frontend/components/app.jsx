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

import SignupContainer from './session/signup_container'
import WelcomeContainer from './welcome/welcome_container';

const App = () => (
    <div>
        <header>
            <Link to="/" className="header-link">
                <h1>my BnB</h1>
            </Link>
            <WelcomeContainer />
        </header>
            <Route path="/signup" component={SignupContainer}></Route>
            <Link to="/" className="header-link">
                <h1>Bench BnB</h1>
            </Link>
    </div>
);

export default App;