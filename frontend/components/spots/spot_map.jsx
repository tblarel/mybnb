import React from 'react';
import { withRouter } from 'react-router-dom';
import SpotIndexItem from './spot_index_item';
import { filter } from 'lodash';

class SpotMap extends React.Component {

    constructor(props) {
        super(props)
        this.createMap = this.createMap.bind(this);
    }
    
    componentDidMount() {
        debugger
        this.createMap(this.props.lat,this.props.long);
    }

    createMap(lat,long) {
        const mapOptions = {
            center: { lat: this.props.lat, lng: this.props.long }, // this is SF
            zoom: 11,
            styles: [
                {
                    "featureType": "all",
                    "elementType": "labels",
                    "stylers": [
                        {
                            "visibility": "off"
                        }
                    ]
                },
                {
                    "featureType": "landscape",
                    "elementType": "all",
                    "stylers": [
                        {
                            "visibility": "on"
                        },
                        {
                            "color": "#f3f4f4"
                        }
                    ]
                },
                {
                    "featureType": "landscape.man_made",
                    "elementType": "geometry",
                    "stylers": [
                        {
                            "weight": 0.9
                        },
                        {
                            "visibility": "off"
                        }
                    ]
                },
                {
                    "featureType": "poi.park",
                    "elementType": "geometry.fill",
                    "stylers": [
                        {
                            "visibility": "on"
                        },
                        {
                            "color": "#83cead"
                        }
                    ]
                },
                {
                    "featureType": "road",
                    "elementType": "all",
                    "stylers": [
                        {
                            "visibility": "on"
                        },
                        {
                            "color": "#ffffff"
                        }
                    ]
                },
                {
                    "featureType": "road",
                    "elementType": "labels",
                    "stylers": [
                        {
                            "visibility": "off"
                        }
                    ]
                },
                {
                    "featureType": "road.highway",
                    "elementType": "all",
                    "stylers": [
                        {
                            "visibility": "on"
                        },
                        {
                            "color": "#fee379"
                        }
                    ]
                },
                {
                    "featureType": "road.arterial",
                    "elementType": "all",
                    "stylers": [
                        {
                            "visibility": "on"
                        },
                        {
                            "color": "#fee379"
                        }
                    ]
                },
                {
                    "featureType": "water",
                    "elementType": "all",
                    "stylers": [
                        {
                            "visibility": "on"
                        },
                        {
                            "color": "#7fc8ed"
                        }
                    ]
                }
            ]
        };
        // wrap this.mapNode in a Google Map
        this.map = new google.maps.Map(this.mapNode, mapOptions);
    }

    componentDidUpdate(prevProps, prevState) {
        if(prevProps.lat !== this.props.lat || prevProps.long !== this.props.long) {
            debugger
            this.createMap(this.props.lat, this.props.long);
        }
    }

    render() {
        debugger
        return(
            <div id='map-container' ref='map'> 
                <div ref={map => this.mapNode = map} />
            </div>
        )
    }
}

export default SpotMap;