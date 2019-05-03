json.set! :locations do
    json.set! location.id do 
        json.name location.name
        json.home_type location.lat
    end
end

json.set! :spots do 
    spots.each do |spot|
        json.set! spot.id do
            json.id spot.id 
            json.title spot.title
            json.host_id spot.host_id
        end
    end
end