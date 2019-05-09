import { Link } from 'react-router-dom';
import { connect } from 'react-redux';
import SpotShow from './spot_show';
import { fetchASpot } from '../../actions/spot_actions';
import { fetchAllSpots } from '../../actions/spot_actions';


const mapStateToProps = (state,ownprops) => {
    return {
        spot: state.entities.spots[ownprops.match.params.id]
    }
}

const mapDispatchToProps = dispatch => {
    return {
        findASpot: id => dispatch(fetchASpot(id)),
        findAllSpots: () => dispatch(fetchAllSpots()),
    }
}

export default connect(mapStateToProps, mapDispatchToProps)(SpotShow);