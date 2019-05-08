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
        // debugger
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
            debugger
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