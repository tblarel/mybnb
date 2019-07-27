import React from 'react';


class SpotReviews extends React.Component {

    constructor(props) {
        super(props);
        this.renderReviews = this.renderReviews.bind(this);
    }

    renderReviews() {
        return (
            Object.values(this.props.reviews).map(review => (
                <li className="feature-list-item" key={review.id}>
                    <h3>{review.rating} Stars -{review.guest_fname} {review.guest_lname}</h3>
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



