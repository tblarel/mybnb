import React from 'react';
import Rater from 'react-rater'
import 'react-rater/lib/react-rater.css'

class SpotReviewsAvg extends React.Component {

    constructor(props) {
        super(props);
    }

    render() {
        if (isNaN(this.props.avg)) {
            return(
                <div className='rating-avg-row'>
                    <p className="avg-review-num">No Reviews Yet</p>
                </div>
            )
        } else {
            return(
                <div className='rating-avg-row'>
                    <Rater total={5} rating={this.props.avg} interactive={false} /> <p className="avg-review-num">&nbsp;({this.props.num})</p>
                </div>

            )
        }
    };

}

export default SpotReviewsAvg;



