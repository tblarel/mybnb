import React from 'react';
import { withRouter, Link } from 'react-router-dom';
import Rater from 'react-rater'
import 'react-rater/lib/react-rater.css'

class Review extends React.Component {
    constructor(props) {
        super(props);
        this.handleReview = this.handleReview.bind(this);
        this.handle
        this.state = {
            review: {
                booking_id: this.props.data.booking_id,
                rating: 0,
                body: ''
            }
        }
    }

    componentDidMount() {
        let modalEle = document.getElementsByClassName("modal-child");
        let backgroundEle = document.getElementsByClassName("modal-background");

        setTimeout(function () {
            console.log(`found  ${modalEle}`)
            modalEle[0].className += " visible";
        }, 0);
        setTimeout(function () {
            console.log(`found  ${backgroundEle}`);
            backgroundEle[0].className += " visible";
        }, 0);
    }

    handleReview({rating}) {
        let review = this.state.review;
        review.rating = rating;
        this.setState({
            review: review,
            rating: rating
        });
        debugger
    }

    render() {
        return (
            <div>
                <span className="close-button" onClick={this.props.closeModal}>&times;</span>
                <div className="two-half-modal-container">
                    <div className="left-half-modal-container">
                        <h3>How was your stay at <strong>{this.props.data.spot_name}</strong></h3>
                        <div className={"spot-img "}
                            style={{ backgroundImage: `url(${this.props.data.photo_url})` }}>
                        </div>
                        <h3> and your host <strong>{this.props.data.host_fname} {this.props.data.host_lname}</strong>?</h3>          
                        <Rater total={5} rating={this.state.rating} interactive={true} 
                        onRate={this.handleReview.bind(this)}/>
                    </div>
                    <div className="right-half-modal-container">
                        <div className="row">
                            <textarea   value={this.state.text}
                                        placeholder={"Any thoughts to share about your stay?"} 
                                        className="review-textarea" ></textarea>
                        </div>
                        <div className="row">
                            <input className="session-submit" type="submit" value="Submit" onClick={this.handleReview}></input>
                        </div>
                    </div>
                </div>
            </div>
        );
    }
};

export default withRouter(Review);