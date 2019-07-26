export const createReview = data => (
    $.ajax({
        method: 'post',
        url: '/api/bookings',
        data
    })
);

export const fetchGuestReviews = user_id => (
    $.ajax({
        method: 'get',
        url: `/api/bookings/?guest=${user_id}`,
    })
);

export const fetchSpotReviews = spot_id => (
    $.ajax({
        method: 'get',
        url: `/api/bookings/?spot=${spot_id}`,
    })
);

export const fetchHostReviews = user_id => (
    $.ajax({
        method: 'get',
        url: `/api/bookings/?spot=${spot_id}`,
    })
);
