@reviews.each do |review|
    json.set! review.booking_id do
        json.guest_id review.booking.guest_id
        json.guest_fname review.booking.guest.fname
        json.guest_lname review.booking.guest.lname
        json.rating review.rating
        json.body review.body
        json.spot_id review.booking.spot_id
        json.spot_name review.booking.spot.title
        json.start review.booking.start
        json.end review.booking.end
        json.host_fname review.booking.host.fname
        json.host_lname review.booking.host.lname
        json.photo_url url_for(review.booking.spot.photos.first) 
    end
end
