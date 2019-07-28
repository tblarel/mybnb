import { Link } from 'react-router-dom';
import { connect } from 'react-redux';
import SpotsIndex from './spots_index';
import { fetchAllSpots } from '../../actions/spot_actions';
import { fetchAllLocations } from '../../actions/location_actions';

const mapStateToProps = state => {
    return {
        spots: state.entities.spots,
        locations: state.entities.locations
    }
}

const mapDispatchToProps = dispatch => {
    return {
        findAllSpots: () => dispatch(fetchAllSpots()),
        findAllLocations: () => dispatch(fetchAllLocations())
    }
}

export default connect(mapStateToProps, mapDispatchToProps) (SpotsIndex);