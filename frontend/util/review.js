export const createReview = data => (
    $.ajax({
        method: 'post',
        url: '/api/reviews',
        data
    })
);

export const fetchGuestReviews = user_id => (
    $.ajax({
        method: 'get',
        url: `/api/reviews/?guest=${user_id}`,
    })
);

export const fetchSpotReviews = spot_id => (
    $.ajax({
        method: 'get',
        url: `/api/reviews/?spot=${spot_id}`,
    })
);

export const fetchHostReviews = user_id => (
    $.ajax({
        method: 'get',
        url: `/api/reviews/?spot=${spot_id}`,
    })
);
