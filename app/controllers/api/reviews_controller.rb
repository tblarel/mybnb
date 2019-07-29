class Api::ReviewsController < ApplicationController

    def index
        if(guest)
            @reviews = Review.find_by_sql(["SELECT * FROM reviews 
                INNER JOIN bookings ON booking_id = bookings.id
                WHERE bookings.guest_id = ?", guest])
        elsif(host)
            @reviews = Review.find_by_sql(["SELECT * FROM reviews 
                INNER JOIN bookings ON booking_id = bookings.id
                WHERE bookings.host_id = ?", host])
        elsif(spot)
           @reviews = Review.find_by_sql(["SELECT * FROM reviews 
                INNER JOIN bookings ON booking_id = bookings.id
                WHERE bookings.spot_id = ?", spot])
        else
            @reviews = Review.all
        end
        render "api/reviews/index"
    end

    def create
        @review = Review.new(review_params)
         if @review.save
            render :json => @review
        else
            render json: @review.errors.full_messages, status: 422
        end
    end

    private
    
    def spot
        params[:spot]
    end

    def guest
        params[:guest]
    end

    def host
        params[:host]
    end

    def review_params
        params.permit(:booking_id, :rating, :body)
    end

end
