import React from 'react';

class SpotPhotos extends React.Component {

    constructor(props) {
        super(props);
        this.handleClick = this.handleClick.bind(this);
    }

    handleClick(e) {
        var photoNumber = e.target.id.split('')[e.target.id.length - 1]-1;
        // var photoUrl = this.props.spot.photo_urls[photoNumber];
        // var otherPhotos = this.props.spot.photo_urls;
        // otherPhotos = otherPhotos.slice(photoNumber, 1);
        let data = {
            photos: this.props.spot.photo_urls,
            idx: photoNumber
        }
        this.props.postTempData(data)
        this.props.openModal('photos');
    }

    render() {
        return (
            <div className="photos-container" onClick={this.handleClick}>
                <div className="half-photo-container">
                    <div className="main-photo" id="photo1"
                        style={{ backgroundImage: `url(${this.props.spot.photo_urls[0]})` }}>
                    </div>
                </div>
                <div className="photo-row">
                    <div className="photo-container">
                        <div className="other-photo" id="photo2"
                            style={{ backgroundImage: `url(${this.props.spot.photo_urls[1]})` }}>
                        </div>
                    </div>
                    <div className="photo-container">
                        <div className="other-photo" id="photo3"
                            style={{ backgroundImage: `url(${this.props.spot.photo_urls[2]})` }}>
                        </div>
                    </div>
                </div>
                <div className="photo-row">
                    <div className="photo-container">
                        <div className="other-photo" id="photo4"
                            style={{ backgroundImage: `url(${this.props.spot.photo_urls[3]})` }}>
                        </div>
                    </div>
                    <div className="photo-container">
                        <div className="other-photo" id="photo5"
                            style={{ backgroundImage: `url(${this.props.spot.photo_urls[4]})` }}>
                        </div>
                    </div>
                </div>
            </div>
        );
    };
}

export default SpotPhotos;



