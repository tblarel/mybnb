class Api::SpotsController < ApplicationController
    def index
        @spots = bounds ? Spot.in_bounds(bounds) : Spot.all
        if params[:minGuest] && params[:maxGuest]
            @spots = @spots.where(num_guest: guest_range)
        end
        if params[:minPrice] && params[:maxPrice]
            @spots = @spots.where(price: price_range)
        end
        render "api/spots/index"
    end

    def show
        @spot = Spot.with_attached_photos.find(params[:id])
        render "api/spots/show"
    end

    private

    def guest_range
        (params[:minGuest]..params[:maxGuest])
    end

    def price_range
        (params[:minPrice]..params[:maxPrice])
    end

    def bounds
        params[:bounds]
    end
    
end
