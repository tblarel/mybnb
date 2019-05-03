import React from 'react';
import { withRouter } from 'react-router-dom';


class LocationIndexItem extends React.Component {

    constructor(props) {
        super(props);
        this.handleClick = this.handleClick.bind(this);
    }

    handleClick(e) {
        e.preventDefault();
        this.props.history.push({
            pathname: '/spots',
            state: { loc: this.props.loc.name }
        })
    }

    render () {
        const { name, lat, long, num_spots } = this.props.loc;
        return (
            <div className="location-item" onClick={this.handleClick}>
                <h1>{name}</h1>
                <h3>{num_spots} listings</h3>
            </div>
        );
    }
}

export default withRouter(LocationIndexItem);
