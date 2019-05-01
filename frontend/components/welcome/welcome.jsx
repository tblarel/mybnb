import React from 'react';
import { Link } from 'react-router-dom';



const Welcome = ({ currentUser, logout, openModal }) => {
    const sessionLinks = () => (
        <nav className="login-signup">
            <button onClick={() => openModal('login')}>login</button>
            <button onClick={() => openModal('signup')}>signup</button>

            {/* <Link to="/login">login</Link>
            <Link to="/signup">sign up</Link> */}
        </nav>
    );
    const customWelcome = () => (
        <hgroup className="header-group">
            <h2 className="header-name">Hi, {currentUser.fname} {currentUser.lname}!</h2>
            <button className="header-button" onClick={logout}>Log Out</button>
        </hgroup>
    );

    return currentUser ? customWelcome() : sessionLinks();
};

export default Welcome;
