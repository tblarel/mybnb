import React from 'react';
import { withRouter } from 'react-router-dom';
import { Link } from 'react-router-dom';

class SplashSearch extends React.Component {
    constructor(props) {
        super(props);
    }

    render() {
        return (
            <div className="splash-search-container">
                <form className="login-form-box">
                    <h1>Book unique homes and experiences.</h1>
                    {/* <div id="logo-header"></div> */}
                    <div className="login-form">
                        <label><p>WHERE</p>
                            <input type="text"
                                value="Where to?"
                                // onChange={this.update('email')}
                                className="login-input"
                            />
                        </label>
                        <label><p>GUESTS</p>
                            <select name="guests"
                                // onChange={this.update('password')}
                                className="dropdown-input"
                            >
                                <option value="">How Many Guests?</option>
                            </select>
                        </label>
                        <label className="date"><p>CHECK IN</p>
                            <input type="text"
                                value="Start Date"
                                // onChange={this.update('fname')}
                                className="login-input"
                            />
                        </label>
                        <label className="date"><p>CHECK OUT</p>
                            <input type="text"
                                value="End Date"
                                // onChange={this.update('lname')}
                                className="login-input"
                            />
                        </label>

                        <input className="session-submit"
                            type="submit"
                            value="Search"
                        />
                    </div>
                </form>
            </div>
        );
    }
}

export default SplashSearch;


