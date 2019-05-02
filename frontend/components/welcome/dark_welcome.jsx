import React from 'react';
import { Link } from 'react-router-dom';



const DarkWelcome = ({ currentUser, logout, openModal }) => {

    const sessionLinks = () => (
        <nav className="login-signup">
            <button className="dark" onClick={() => openModal('login')}>login</button>
            <button className="dark" onClick={() => openModal('signup')}>signup</button>
        </nav>
    );
    const customWelcome = () => (
        <hgroup className="header-group login-signup">
            <h2 className="header-name dark">Hi, {currentUser.fname} {currentUser.lname}!</h2>
            <button className="header-button dark" onClick={logout}>log out</button>
        </hgroup>
    );

    return currentUser ? customWelcome() : sessionLinks();
};

export default DarkWelcome;
