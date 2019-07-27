import React from 'react';
import moment from 'moment';
import Rater from 'react-rater'
import 'react-rater/lib/react-rater.css'

class SpotReviews extends React.Component {

    constructor(props) {
        super(props);
        this.renderReviews = this.renderReviews.bind(this);
    }

    renderReviews() {
        return (
            Object.values(this.props.reviews).map(review => (
                <li className="review-item" key={review.id}>
                    <div className="two-half-review-container">
                        <div className="left-half-container">
                            <div className="author-img" style={{ backgroundImage: `url(${review.photo_url})` }}></div>
                        </div>
                        <div className="right-half-container">
                            <div className="review-row">
                                <h3 className="review-author">{review.guest_fname} {review.guest_lname}</h3> 
                                <h4 className="review-date">{new moment(review.date).format('LL')}</h4>
                            </div>
                            <div className="review-row">
                                <Rater total={5} rating={review.rating} interactive={false}/>
                            </div>
                            <h4 className="review-body">{review.body} </h4>
                        </div>
                    </div>
                </li>
            ))
        )
    }

    render() {
        if(Object.keys(this.props.reviews).length === 0) {
            return(
                <li className="feature-list-item" >
                    <h3>No Reviews for this property yet...</h3>
                </li>
            )} else {
            return (<> {this.renderReviews()} </>);
        }
    };

}

export default SpotReviews;



