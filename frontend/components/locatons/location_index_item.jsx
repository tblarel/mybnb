import React from 'react';
import { withRouter } from 'react-router-dom';


class LocationIndexItem extends React.Component {

    constructor(props) {
        super(props);
        // this.handleClick = this.handleClick.bind(this);
    }

    handleClick() {

    }

    render () {
        const { name, lat, long, num_spots } = this.props.loc;
        return (
            <div class="location-item">
                <h1>{name}</h1>
                <h3>{num_spots} listings</h3>
            </div>
        );
    }
}

export default withRouter(LocationIndexItem);
