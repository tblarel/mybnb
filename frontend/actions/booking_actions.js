import * as APIUtil from '../util/booking';

export const RECEIVE_BOOKING = 'RECEIVE_BOOKING';
export const RECEIVE_BOOKINGS = 'RECEIVE_BOOKINGS';
export const CREATE_BOOKING = 'CREATE_BOOKING';

export const receiveBooking = booking => ({
    type: RECEIVE_BOOKING,
    booking
});

export const receiveBookings = bookings => ({
    type: RECEIVE_BOOKINGS,
    bookings
});

export const createBooking = booking => ({
    type: CREATE_BOOKING,
    booking
});

export const createABooking = booking => dispatch => (
    APIUtil.createBooking(booking).then(booking => (
        dispatch(receiveBooking(booking))
    ))
);

export const fetchUserBookings = user_id => dispatch => (
    APIUtil.fetchUserBookings(user_id).then(bookings => (
        dispatch(receiveBookings(bookings))
    ))
);

export const fetchSpotBookings = spot_id => dispatch => (
    APIUtil.fetchSpotBookings(spot_id).then(bookings => (
        dispatch(receiveBookings(bookings))
    ))
);