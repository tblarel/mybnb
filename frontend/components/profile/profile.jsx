import React from 'react';
import { withRouter, Link } from 'react-router-dom';
import DarkWelcomeContainer from '../welcome/dark_welcome_container';


class Profile extends React.Component {
    constructor(props) {
        super(props);
        this.state = {

        }
    }

    render() {
        return(
        <div className="page-content-container">
            <h1>hi</h1>
            <header className="top-nav">
                <Link to="/" className="header-link">
                    <div className="icon-color"></div>
                </Link>
                <DarkWelcomeContainer />
            </header>
            <div className="profile">
                <div className="row">
                    <div className='two-halves'>
                        <div className='left'> 
                            <img className="profile-pic"></img>
                        </div>
                        <div className='right'>
                            <h1 className='full-width'>{this.props.currentUser.fname}</h1><br></br>
                            <h2 className='full-width'>{this.props.currentUser.lname}</h2><br></br>
                            <h4 className='full-width'>User since {' '}
                                {new Date(this.props.currentUser.created_at).toDateString()}
                            </h4>
                        </div>
                    </div>
                </div>
                <div className="row">
                </div>


            </div>
        </div>
        )
    }
}

export default Profile