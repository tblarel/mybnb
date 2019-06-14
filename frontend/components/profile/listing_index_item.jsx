import React from 'react';

class ListingIndexItem extends React.Component {

    constructor(props) {
        super(props);
        this.handleClick = this.handleClick.bind(this);
    }

    handleClick(e) {
        this.props.ctx.props.history.push({
            pathname: `/spots/${this.props.spot.id}`
        });
    }

    render() {
        const { name, photo_url,city } = this.props.spot;
        return (
            <div className="spot-item" onClick={this.handleClick} >
                <div className="spot-details-line top">
                    <h4 className="centered">{name}</h4>
                </div>
                <div className="spot-img"
                    style={{ backgroundImage: `url(${photo_url})` }}>
                </div>
                <div className="spot-details-line bottom">
                    <p className="centered">{city}</p>
                </div>
            </div>
        )
    }
}

export default ListingIndexItem;