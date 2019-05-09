class Api::SpotsController < ApplicationController
    def index
        @spots = bounds ? Spot.in_bounds(bounds) : Spot.all
        # @spots = Spot.all
        render "api/spots/index"
    end

    def show
        @spot = Spot.with_attached_photos.find(params[:id])
        render "api/spots/show"
    end

    private

    def bounds
        params[:bounds]
    end
    
end
