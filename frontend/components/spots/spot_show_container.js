import { Link } from 'react-router-dom';
import { connect } from 'react-redux';
import SpotShow from './spot_show';
import { fetchASpot } from '../../actions/spot_actions';
import { fetchAllSpots } from '../../actions/spot_actions';
import { openModal } from '../../actions/modal_actions';
import { createABooking } from '../../actions/booking_actions';

const mapStateToProps = (state,ownprops) => {
    return {
        spot: state.entities.spots[ownprops.match.params.id],
        currentUser: state.entities.users[state.session.id],
        minGuest: state.ui.filters.minGuest,
    }
}

const mapDispatchToProps = dispatch => {
    return {
        findASpot: id => dispatch(fetchASpot(id)),
        findAllSpots: () => dispatch(fetchAllSpots()),
        openModal: modal => dispatch(openModal(modal)),
        createABooking: booking => dispatch(createABooking(booking))
    }
}

export default connect(mapStateToProps, mapDispatchToProps)(SpotShow);