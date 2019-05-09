import React from 'react';
import { withRouter, Link } from 'react-router-dom';
import DarkWelcomeContainer from '../welcome/dark_welcome_container';

class SpotShow extends React.Component {

    constructor(props) {
        super(props);
        this.renderFeatures = this.renderFeatures.bind(this);
        this.calculateFees = this.calculateFees.bind(this);
        this.state = {

        };
    }
    calculateFees(spot) {
        debugger
        let price = spot.price
        let fees = spot.num_guest * 5.64;
        let taxes = (price + fees) * .08;
        let subtotal = price + fees + taxes;
        this.setState({
            price: price,
            fees: fees.toFixed(2),
            taxes: taxes.toFixed(2),
            subtotal: subtotal.toFixed(2)
        }); 
    }

    componentDidMount() {
        if (this.props.spot === undefined || this.props.spot.photo_urls === undefined) {
            if(this.props.spot){
                this.calculateFees(this.props.spot);
            }
            this.props.findASpot(this.props.match.params.id);
        } else if( this.props.spot) {
            this.calculateFees(this.props.spot)
        }
    }

    componentDidUpdate(prevProps, prevState) {
        if(this.props.match.params.id !== prevProps.match.params.id) {
            this.props.findASpot(this.props.match.params.id)
            .then( spot => {
                this.calculateFees(spot)
            })
        }

    }

    

    renderFeatures() {
        return (
            Object.values(this.props.spot.features).map(feature => (
                    <li>{feature}</li>     
            ))
        )
    }


    render() {
        if (this.props.spot !== undefined && this.props.spot.photo_urls !== undefined) {
            debugger        
            return(
                <div className="spot-container">
                    <header className="top-nav">
                        <Link to="/" className="header-link">
                            <div className="icon-color"></div>
                        </Link>
                        <DarkWelcomeContainer />
                    </header>
                    <div className="photos-container">
                        <div className="main-photo" id="photo1"
                            style={{ backgroundImage: `url(${this.props.spot.photo_urls[0]})` }}>
                        </div>
                    <div className="photo-row">
                        <div className="other-photo" id="photo2"
                            style={{ backgroundImage: `url(${this.props.spot.photo_urls[1]})` }}>
                        </div>
                            <div className="other-photo" id="photo3" 
                            style={{ backgroundImage: `url(${this.props.spot.photo_urls[2]})` }}>
                        </div>
                    </div>
                    <div className="photo-row">                    
                            <div className="other-photo" id="photo4" 
                                style={{ backgroundImage: `url(${this.props.spot.photo_urls[3]})` }}>
                            </div>
                            <div className="other-photo" id="photo5" 
                                style={{ backgroundImage: `url(${this.props.spot.photo_urls[4]})` }}>
                            </div>
                    </div>
                    </div>
                    <div className="spot-details-box">
                        <div className="left-box">
                            <div className="left-box-text">
                                <p> {this.props.spot.home_type} </p>
                                <h1>{this.props.spot.name}</h1>
                                <h2>{this.props.spot.city}</h2>
                                <div className="container">
                                    <div className="spot-numbers">
                                        <div className="spot-number-item">
                                            <div className="spot-number-icon" id="bedroom"></div>                                
                                            <h3>{this.props.spot.num_bedrooms} bedrooms</h3>
                                        </div>
                                        <div className="spot-number-item">
                                            <div className="spot-number-icon" id="bed"></div>
                                            <h3>{this.props.spot.num_beds} beds</h3>
                                        </div>
                                        <div className="spot-number-item">
                                            <div className="spot-number-icon" id="guests"></div>
                                            <h3>{this.props.spot.num_guest} guests</h3>
                                        </div>                            
                                    </div>
                                    <div className="left-box-img">
                                        <div class="host-img" style={ {backgroundImage: `url(${this.props.spot.host_img_url})`  }}></div>
                                        <h3>{this.props.spot.host} {this.props.spot.host_lname}</h3>
                                    </div>
                                </div>
                            </div>
                            <h3>{this.props.spot.description}</h3>
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
                                                        className="dropdown-input">
                                                        <option value="">1 Guest</option>
                                                    </select>
                                                </label>
                                                <h3 className="subtotal">${this.state.price} per night</h3>
                                                <h3 className="subtotal">${this.state.fees} cleaning fee</h3> 
                                                <h3 className="subtotal">${this.state.taxes} taxes and fees</h3> 
                                                <hr></hr>
                                                <h3 className="subtotal">${ this.state.subtotal }</h3>
                                            </div>
                                            <div className="right-form">
                                                <label className="date"><p>Check Out</p>
                                                    <select name="guests"
                                                        className="dropdown-input">
                                                        <option value="">Start</option>
                                                    </select>
                                                </label>
                                                <label className="date"><p>Check In</p>
                                                    <select name="guests"
                                                        className="dropdown-input">
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
