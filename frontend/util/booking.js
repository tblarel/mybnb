export const createBooking = data => (
    $.ajax({
        method: 'post',
        url: '/api/bookings',
        data
    })
);

export const fetchUserBookings = guest_id => (
    $.ajax({
        method: 'get',
        url: `/api/bookings/?guest=${guest_id}`,
    })
);

export const fetchSpotBookings = spot_id => (
    $.ajax({
        method: 'get',
        url: `/api/bookings/?spot=${spot_id}`,
    })
);
