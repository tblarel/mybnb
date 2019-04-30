// React
import React from 'react';
import ReactDOM from 'react-dom';

// Components
import Root from './components/root';


document.addEventListener('DOMContentLoaded', () => {
    let store;
    const root = document.getElementById('root');
    ReactDOM.render(<Root store={store} />, root);
});