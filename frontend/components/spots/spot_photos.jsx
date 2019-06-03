import React from 'react';

class SpotPhotos extends React.Component {

    constructor(props) {
        super(props);
    }

    render() {
        return (
            <div className="photos-container">
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



