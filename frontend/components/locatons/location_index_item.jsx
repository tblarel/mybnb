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
        const { name, lat, long } = this.props.loc;
        return (
            <div class="location-container">
                <h1>{name}</h1>
                <h3>{lat}</h3>
                <h3>{long}</h3>
            </div>
        );
    }
}

export default withRouter(LocationIndexItem);
