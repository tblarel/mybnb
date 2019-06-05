class Api::BookingsController < ApplicationController

    def index
        if (spot)
            @bookings = Booking.where(spot_id: params[:spot])
        elsif (host)
            @bookings = Booking.joins(:host).where(id: params[:host])
        else 
            @bookings = Booking.all
        end
        render "api/bookings/index"
    end

    def create

    end

    def destroy

    end

    private

    def spot
        params[:spot]
    end

    def host
        params[:host]
    end

    def params
        params.require(@booking).permit
    end
end
