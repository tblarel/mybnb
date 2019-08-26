import React from 'react';
import { withRouter, Link } from 'react-router-dom';
import Slide from './slide';

class Photos extends React.Component {

    constructor(props) {
        super(props);
    }

    componentDidMount() {
        let modalEle = document.getElementsByClassName("modal-child");
        let backgroundEle = document.getElementsByClassName("modal-background");

        setTimeout(function () {
            modalEle[0].className += " visible";
        }, 0);

        setTimeout(function () {
            backgroundEle[0].className += " visible";
        }, 0);

    }

    render() {
        return(
            <div className="photo-modal-container">
                {/* <div className="close-row"> */}
                    <span className="photo-modal-close-button" onClick={this.props.closeModal}>&times;</span>
                {/* </div> */}
                <Slide image = {this.props.data.photos[this.props.data.idx]}
                />
            </div>
        );
    }

}

export default withRouter(Photos);