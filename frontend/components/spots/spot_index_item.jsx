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
                Object.values(features).map( feature => (
                    <h3>{feature}</h3>
                ))
           ); 
        } else {
            return (
                <h3>No features</h3>
            ) ; 
        } 
    }

    render() {
        const { name, home_type, host, description, features, price } = this.props.spot;
        return (
            <div className="spot-item" onClick={this.handleClick}>
                <div className="spot-img"></div>
                <div className="features">
                    {this.renderFeatures(features)}
                </div>
                <h1>{name}</h1>
                <h2>${price}/night</h2> 
                <div className="spot-details-line">
                    <h3>{home_type} </h3>
                    <h3>{host} </h3>
                </div>
            </div>
        );
    }
}

export default withRouter(SpotIndexItem);
