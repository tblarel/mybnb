class Api::LocationsController < ApplicationController
    def index 
        @locations = Location.all
        render "api/locations/index"
    end

    def show
        @location = Location.find(params[:id])
        @spots = @location.spots
        render "api/locations/show",locals: {location: @location, spots: @spots}
    end
    
end
