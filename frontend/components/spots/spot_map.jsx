import React from 'react';
import ReactDOM from 'react-dom';

import { withRouter } from 'react-router-dom';
import SpotIndexItem from './spot_index_item';
import { filter } from 'lodash';
import MarkerManager from '../../util/marker_manager';

const getCoordsObj = latLng => ({
    lat: latLng.lat(),
    lng: latLng.lng()
});


class SpotMap extends React.Component {

    constructor(props) {
        super(props)
        this.createMap = this.createMap.bind(this);

    }
    
    componentDidMount() {
        this.createMap(this.props.lat,this.props.long);
        this.MarkerManager = new MarkerManager(this.map, this.handleMarkerClick.bind(this));
        if (this.props.singleSpot) {
            this.props.fetchASpot(this.props.spotId);
        } else {
            this.registerListeners();
            this.MarkerManager.updateMarkers(this.props.spots);
        }

    }
    componentDidUpdate(prevProps, prevState) {
        if(prevProps.lat !== this.props.lat || prevProps.long !== this.props.long) {
            this.map.panTo({lat:this.props.lat, lng:this.props.long})
            this.map.setZoom(this.props.zoom);
        }

        if (this.props.singleSpot) {
            const targetSpotKey = Object.keys(this.props.spots)[0];
            const targetSpot = this.props.benches[targetSpotKey];
            this.MarkerManager.updateMarkers([targetSpot]);
        } else {
            this.MarkerManager.updateMarkers(this.props.spots);
        }
    }

    createMap(lat,long) {
        const mapOptions = {
            center: { lat: this.props.lat, lng: this.props.long }, 
            zoom: this.props.zoom,
            styles: [
                {
                    "featureType": "landscape.natural",
                    "elementType": "geometry.fill",
                    "stylers": [
                        {
                            "visibility": "on"
                        },
                        {
                            "color": "#e0efef"
                        }
                    ]
                },
                {
                    "featureType": "poi",
                    "elementType": "geometry.fill",
                    "stylers": [
                        {
                            "visibility": "on"
                        },
                        {
                            "hue": "#1900ff"
                        },
                        {
                            "color": "#c0e8e8"
                        }
                    ]
                },
                {
                    "featureType": "road",
                    "elementType": "geometry",
                    "stylers": [
                        {
                            "lightness": 100
                        },
                        {
                            "visibility": "simplified"
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
                    "featureType": "transit.line",
                    "elementType": "geometry",
                    "stylers": [
                        {
                            "visibility": "on"
                        },
                        {
                            "lightness": 700
                        }
                    ]
                },
                {
                    "featureType": "water",
                    "elementType": "all",
                    "stylers": [
                        {
                            "color": "#7dcdcd"
                        }
                    ]
                }
            ]
        };

        this.map = new google.maps.Map(this.mapNode, mapOptions);
    } 
    
    handleMarkerClick(spot) {
        this.props.history.push(`spots/${spot.id}`);
    }

    handleClick(coords) {
        this.props.history.push({
            pathname: 'spots/new',
            search: `lat=${coords.lat}&lng=${coords.lng}`
        });
    }

    registerListeners() {
        google.maps.event.addListener(this.map, 'idle', () => {
            const { north, south, east, west } = this.map.getBounds().toJSON();
            const bounds = {
                northEast: { lat: north, lng: east },
                southWest: { lat: south, lng: west }
            };
            this.props.updateFilter('bounds', bounds);
        });
        google.maps.event.addListener(this.map, 'click', (event) => {
            const coords = getCoordsObj(event.latLng);
            this.handleClick(coords);
        });
    }

    render() {
        return(
            <div id='map-container' ref='map'> 
                <div ref={map => this.mapNode = map} />
            </div>
        )
    }
}

export default withRouter(SpotMap);