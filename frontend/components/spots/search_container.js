import { Link } from 'react-router-dom';
import { connect } from 'react-redux';
import Search from './search';
import { fetchAllSpots } from '../../actions/spot_actions';
import { fetchAllLocations } from '../../actions/location_actions';
import { updateFilter } from '../../actions/filter_actions';
import { asArray } from '../../reducers/selectors';



const mapStateToProps = state => {
    return {
        spots: asArray(state.entities.spots),
        locations: state.entities.locations,
        minGuest: state.ui.filters.minGuest,
        maxGuest: state.ui.filters.maxGuest,
        minPrice: state.ui.filters.minPrice,
        maxPrice: state.ui.filters.maxPrice,
    }
}


const mapDispatchToProps = dispatch => ({
    updateFilter: (filter, value) => dispatch(updateFilter(filter, value)),
    findAllSpots: () => dispatch(fetchAllSpots()),
    findAllLocations: () => dispatch(fetchAllLocations())
})

export default connect(mapStateToProps, mapDispatchToProps)(Search);