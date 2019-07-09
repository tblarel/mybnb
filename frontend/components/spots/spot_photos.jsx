import React from 'react';

class SpotPhotos extends React.Component {

    constructor(props) {
        super(props);
        this.handleClick = this.handleClick.bind(this);
    }

    handleClick(e) {
        var photoNumber = e.target.id.split('')[e.target.id.length - 1];
        var photoUrl = this.props.spot.photo_urls[photoNumber];
        var otherPhotos = this.props.spot.photo_urls;
        otherPhotos = otherPhotos.slice(photoNumber, 1);
        debugger
    }

    render() {
        return (
            <div className="photos-container" onClick={this.handleClick}>
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
        );
    };
}

export default SpotPhotos;



