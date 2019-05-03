export const fetchSpots = () => (
    $.ajax({
        method: 'get',
        url: '/api/spots'
    })
)