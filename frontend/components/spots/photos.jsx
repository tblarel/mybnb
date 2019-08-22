import React from 'react';
import { withRouter, Link } from 'react-router-dom';

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
            <div className="tmodal-container">
                <div className="close-row">
                    <span className="modal-close-button" onClick={this.props.closeModal}>&times;</span>
                </div>
                <h1>This is the Photos Modal</h1>
            </div>
        );
    }

}

export default withRouter(Photos);