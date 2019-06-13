@bookings.each do |booking|
    json.set! booking.id do
        json.id booking.id 
        json.guest_id booking.guest_id
        json.spot_id booking.spot_id
        json.start booking.start
        json.end booking.end
        json.host_fname booking.host.fname
        json.host_lname booking.host.lname
        json.spot_name booking.spot.title
        json.num_guest booking.num_guest
        json.photo_url url_for(booking.spot.photos.first) 
    end
end
