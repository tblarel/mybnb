export const fetchLocations = () => (
    $.ajax({
        method: 'get',
        url: '/api/locations'
    })
);