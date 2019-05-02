json.locations do 
    @locations.each do |location|
        json.set! location.id do 
            json.name location.name
            json.lat location.lat
            json.long location.long
        end
    end
end
