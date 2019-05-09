import React from 'react';
import { withRouter } from 'react-router-dom';


class SpotIndexItem extends React.Component {

    constructor(props) {
        super(props);
        this.handleClick = this.handleClick.bind(this);
    }

    handleClick(e) {
        e.preventDefault();
        this.props.history.push({
            pathname: `/spots/${this.props.spot.id}`,
        })
    }

    renderFeatures(features) {
        if(features !== undefined) {
           return (
                Object.values(features).map( (feature, index) => {
                    if (index <= 3) {
                        return(
                            <h3 key={feature.id}>{feature}</h3>
                        ) 
                    }else {
                        return;
                    }
                }         
            ))
        } else {
            return (
                <h3>No features</h3>
            ) ; 
        } 
    }

    render() {
        const { name, home_type, host, description, features, price, num_beds, photo_url } = this.props.spot;
        return (
            <div className="spot-item" onClick={this.handleClick}>
                <div className="spot-img"
                    style={{ backgroundImage: `url(${photo_url})` }}>
                </div>
                <div className="features">
                    <h3>{home_type} </h3>
                    {this.renderFeatures(features)}
                </div>
                <div className="spot-details-line">
                    <h1>{name}</h1>
                    <h3>{host} </h3>
                </div>
                <div className="priceline">
                    <h2>${price}/night</h2> 
                    <h2>{num_beds} beds</h2>
                </div>
                
            </div>
        );
    }
}

export default withRouter(SpotIndexItem);
