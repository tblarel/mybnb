import React from 'react';


class SpotFeatures extends React.Component {

    constructor(props) {
        super(props);
        this.renderFeatures = this.renderFeatures.bind(this);
    }

    renderFeatures() {
        return(
            Object.values(this.props.features).map(feature => (
                <li className="feature-list-item" key={feature}>
                    <div className="spot-number-icon" id={feature}></div>
                    <h3>{feature}</h3>
                </li>
             ))
        )
    }

    render() {
        return ( <> {this.renderFeatures()} </> );
    };

}

export default SpotFeatures;



