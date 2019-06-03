import React from 'react';


class SpotDetails extends React.Component  {
    
    constructor(props) {
        super(props);
    }

    renderFeatures(spot) {
        return (
            Object.values(spot.features).map(feature => (
                <li key={feature}>{feature}</li>
            ))
        )
    }

    render() {
        return(
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
                            <div className="host-img" style={{ backgroundImage: `url(${this.props.spot.host_img_url})` }}></div>
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
                    {this.renderFeatures(this.props.spot)}
                </ul>
                <br /> <br />

                <hr></hr>
                <h2>Reviews</h2>
                <ul>
                    {this.renderFeatures(this.props.spot)}
                </ul>
            </div>
        );
    };
    
}

export default SpotDetails;



