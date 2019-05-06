import React from 'react';
import { withRouter, Link } from 'react-router-dom';
import DarkWelcomeContainer from '../welcome/dark_welcome_container';

class SpotShow extends React.Component {

    constructor(props) {
        super(props);
        if (_.isEmpty(this.props.spots)) {
            this.props.findAllSpots();
        }
        this.state = {
            id: this.props.match.params.id,
            spot: this.props.spots[this.props.match.params.id]
        };
        this.renderFeatures = this.renderFeatures.bind(this);
    }

    componentDidMount() {
        if (_.isEmpty(this.props.spots)) {
            this.props.findAllSpots();
        }
    }

    componentDidUpdate(prevProps, prevState) {
        if(prevProps.spots !== this.props.spots) {
            this.setState({
                spot: this.props.spots[this.state.id]
            });
        }
    }

    renderFeatures() {
        return (
            Object.values(this.state.spot.features).map(feature => (
                    <li>{feature}</li>     
            ))
        )
    }


    render() {
        if ( ! _.isEmpty(this.props.spots) && this.state.spot !== undefined) {
            return(

                <div className="spot-container">
                    <header className="top-nav">
                        <Link to="/" className="header-link">
                            <div className="icon-color"></div>
                        </Link>
                        <DarkWelcomeContainer />
                    </header>
                    <div className="photos-container">
                        <div className="main-photo" id="photo1"></div>
                    <div className="photo-row">
                        <div className="other-photo" id="photo2"></div>
                            <div className="other-photo" id="photo3"></div>
                    </div>
                    <div className="photo-row">                    
                            <div className="other-photo" id="photo4"></div>
                            <div className="other-photo" id="photo5"></div>
                    </div>
                    </div>
                    <div className="spot-details-box">
                        <div className="left-box">
                            <div className="left-box-text">
                                <p> {this.state.spot.home_type} </p>
                                <h1>{this.state.spot.name}</h1>
                                <h2>{this.state.spot.city}</h2>
                                <div class="container">
                                    <div className="spot-numbers">
                                        <div className="spot-number-item">
                                            <div className="spot-number-icon" id="bedroom"></div>                                
                                            <h3>{this.state.spot.num_bedrooms} bedrooms</h3>
                                        </div>
                                        <div className="spot-number-item">
                                            <div className="spot-number-icon" id="bed"></div>
                                            <h3>{this.state.spot.num_beds} beds</h3>
                                        </div>
                                        <div className="spot-number-item">
                                            <div className="spot-number-icon" id="guests"></div>
                                            <h3>{this.state.spot.num_guest} guests</h3>
                                        </div>                            
                                    </div>
                                    <div className="left-box-img">
                                        <div class="host-img"></div>
                                        <h3>{this.state.spot.host}</h3>
                                    </div>
                                </div>
                            </div>
                            <h3>{this.state.spot.description}</h3>
                            <div className="review-score">
                                <div className="stars"></div>
                                <p className="star-score"><strong>Average Review:</strong> <br>
                                </br> 4.52 Stars</p>
                                <br />
                            </div>
                            <br /> <br /> 
                            <hr></hr>
                            <h2>Home Ammeneties</h2>
                            <ul>
                                {this.renderFeatures()}
                            </ul>
                            <br/> <br/> 
                            
                            <hr></hr>
                            <h2>Reviews</h2>
                            <ul>
                                {this.renderFeatures()}
                            </ul>
                        </div>
                        <div className="right-box">
                                <form>
                                    <div className="book-form">
                                        <div className="form-row">
                                            <div className="left-form">
                                                <label><p>GUESTS</p>
                                                    <select name="guests"
                                                        // onChange={this.update('password')}
                                                        className="dropdown-input"
                                                    >
                                                        <option value="">1 Guest</option>
                                                    </select>
                                                </label>
                                                <h3>${this.state.spot.price} per night</h3> 
                                            </div>
                                            <div className="right-form">
                                                <label className="date"><p>CHECK IN</p>
                                                    <select name="guests"
                                                        // onChange={this.update('password')}
                                                        className="dropdown-input"
                                                    >
                                                        <option value="">Start</option>
                                                    </select>
                                                </label>
                                                <label className="date"><p>CHECK OUT</p>
                                                    <select name="guests"
                                                        // onChange={this.update('password')}
                                                        className="dropdown-input"
                                                    >
                                                        <option value="">End</option>
                                                    </select>
                                                </label>                                            
                                            </div> 
                                        </div>
                                        <div className="form-row">
                                            <input className="session-submit"
                                                type="submit"
                                                value="Request To Book"
                                            />
                                        </div>
                                    </div>
                                </form>
                        </div>
                    </div>
                </div>
            )   
        } else return (
                <div className="content-container">
                    <header className="top-nav">
                        <Link to="/spots" className="header-link">
                            <div className="icon-color"></div>
                        </Link>
                        <DarkWelcomeContainer />
                    </header>
                    <h1> Loading... </h1>
                </div>
        )
    }
}

export default withRouter(SpotShow);
