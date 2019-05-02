class Api::LocationsController < ApplicationController
    def index 
        @locations = Location.all
        render "api/locations/index"
    end

    def show
        @location = Location.find(params[:id])
        render "api/locations/show"
    end
    
end
