import React, { Component } from 'react';
// import Slide from './slide';
import LeftArrow from './left_arrow';
import RightArrow from './right_arrow';

export default class Slider extends Component {
    constructor(props) {
        super(props)
        this.state = {
            idx: props.idx,
            photos: props.photos,
            translateValue: 0
        }
    }


    goToPreviousSlide() {

    }

    goToNextSlide() {
        this.setState(prevState => ({
            currentIndex: prevState.currentIndex + 1
        }));
    }

    render() {
        return (
            <div className="slider">
                <LeftArrow
                    goToPreviousSlide={this.goToPreviousSlide} />

                <div className="slider-wrapper"
                    style={{
                        transform: `translateX(${this.state.translateValue}px)`,
                        transition: 'transform ease-out 0.45s',
                        height: '100%'
                    }}>
                    {
                        this.state.photos.map((image, i) => (
                            <Slide key={i} image={image} />
                        ))
                    }
                </div>           
                <RightArrow 
                    goToNextSlide = {this.goToNextSlide} />
            </div>
        );
    }
}