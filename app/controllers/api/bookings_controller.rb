class Api::BookingsController < ApplicationController

    def index
        if (spot)
            @bookings = Booking.where(spot_id: params[:spot])
        elsif (guest)
            @bookings = Booking.joins(:host).where(guest_id: params[:guest])
        else 
            @bookings = Booking.all
        end
        render "api/bookings/index"
    end

    def create
        @booking = Booking.new(booking_params)
         if @booking.save
            render :json => @booking
        else
            debugger
            # render :errors, status: 422
            render json: @booking.errors.full_messages, status: 422
        end
    end

    def destroy

    end

    private

    def spot
        params[:spot]
    end

    def guest
        params[:guest]
    end

    def booking_params
        #  params.require(:booking).permit(:guest_id, :spot_id, :start, :end, :num_guest)
        params.permit(:guest_id, :spot_id, :start, :end, :num_guest)
    end
end
