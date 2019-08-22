import { Link } from 'react-router-dom';
import { connect } from 'react-redux';
import SpotShow from './spot_show';
import { fetchASpot } from '../../actions/spot_actions';
import { fetchAllSpots } from '../../actions/spot_actions';
import { openModal } from '../../actions/modal_actions';
import { createABooking, fetchSpotBookings } from '../../actions/booking_actions';
import { fetchSpotReviews } from '../../actions/review_actions';
import { postTempData } from '../../actions/temp_actions';

const mapStateToProps = (state,ownprops) => {
    return {
        spot: state.entities.spots[ownprops.match.params.id],
        currentUser: state.entities.users[state.session.id],
        reviews: state.entities.reviews,
        minGuest: state.ui.filters.minGuest,
        bookingDates: state.entities.bookings
    }
}

const mapDispatchToProps = dispatch => {
    return {
        findASpot: id => dispatch(fetchASpot(id)),
        findAllSpots: () => dispatch(fetchAllSpots()),
        openModal: modal => dispatch(openModal(modal)),
        createABooking: booking => dispatch(createABooking(booking)),
        fetchSpotBookings: spot_id => dispatch(fetchSpotBookings(spot_id)),
        fetchSpotReviews: spot_id => dispatch(fetchSpotReviews(spot_id)),
        postTempData: data => dispatch(postTempData(data)),
    }
}

export default connect(mapStateToProps, mapDispatchToProps)(SpotShow);