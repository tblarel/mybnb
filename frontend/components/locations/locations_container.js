import { Link } from 'react-router-dom';
import { connect } from 'react-redux';
import LocationsIndex from './locations_index';
import {fetchAllLocations} from '../../actions/location_actions';

const mapStateToProps = state => {
    return {
        locations: state.entities.locations,
    }
}

const mapDispatchToProps = dispatch => {
    return {
        findAllLocations: () => dispatch(fetchAllLocations())
    }
};

export default connect(mapStateToProps, mapDispatchToProps) (LocationsIndex)