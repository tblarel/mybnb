import { Link } from 'react-router-dom';
import { connect } from 'react-redux';
import SpotsIndex from './spots_index';
import { fetchAllSpots } from '../../actions/spot_actions';


const mapStateToProps = state => {
    return {
        spots: state.entities.spots,
    }
}

const mapDispatchToProps = dispatch => {
    return {
        findAllSpots: () => dispatch(fetchAllSpots())
    }
}

export default connect(mapStateToProps, mapDispatchToProps) (SpotsIndex);