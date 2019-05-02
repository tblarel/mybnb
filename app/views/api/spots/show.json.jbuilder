json.spots do 
    json.set! @spot.id do 
        json.name @spot.title
        json.home_type @spot.home_type
        json.host @spot.host.fname
        json.city @spot.location.name
        json.loc_id @spot.loc_id
        json.description @spot.description
        json.lat @spot.lat
        json.long @spot.long
        json.price @spot.price
        json.address @spot.address
        json.num_bedrooms @spot.num_bedrooms
        json.num_beds @spot.num_beds
        json.num_guest @spot.num_guest
    end
end