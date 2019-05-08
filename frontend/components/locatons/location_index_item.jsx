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
            pathname: '/search',
            state: { loc: this.props.loc.name }
        })
    }

    render () {
        const { name, lat, long, num_spots, photo_url } = this.props.loc;
        return (
            <div className="location-item" onClick={this.handleClick}
                style={{ backgroundImage: `linear-gradient(to bottom, rgba(212, 197, 145, 0.193), rgba(37, 39, 63, 0.26)), url(${photo_url})` }}>
                <h1>{name}</h1>
                <h3>{num_spots} listings</h3>
            </div>
        );
    }
}

export default withRouter(LocationIndexItem);
