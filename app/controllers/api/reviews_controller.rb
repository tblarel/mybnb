class Api::ReviewsController < ApplicationController

    def index
        if(guest)
            @reviews = Review.where(Review.guest.id: params[:guest])
        end
        elsif(host)
            @reviews = Review.where(Review.host.id: params[:host])
        end
        elsif(spot)
            @reviews = Review.where(Review.spot.id: params[:spot])
        end
        else
            @reviews = Review.all
        end
        render "api/reviews/index"
    end

    def create
        @review = Booking.new(review_params)
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
