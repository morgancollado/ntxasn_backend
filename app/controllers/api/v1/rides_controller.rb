class Api::V1::RidesController < ApplicationController
    before_action :set_ride, only: [:show, :update, :destroy]

    def index
        if logged_in?
            @rides = current_user.rides
            render json: RideSerializer.new(@rides)
        else 
            render json: {
                error: 'You must be logged in to see rides'
            }
        end 
    end 

    def show 
        render json: RideSerializer.new(@ride)
    end 

    def create
        @ride = current_user.passenger_rides.build(ride_params)
        if @ride.save 
            render json: RideSerializer(@ride), status: :created
        else 
            error_resp = {
                error: @ride.errors.full_messages.to_sentence
            }
            render json: error_resp, status: :unprocessable_entity
        end 
    end 

    def update
        if @ride.update(ride_params)
            render json: RideSerializer.new(@ride), status: :ok
        else
            error_resp = {
                error: @ride.errors.full_messages.to_sentence
            }
            render json: error_resp, status: :unprocessable_entity
        end 
    end 

    def destroy
        if @ride.destroy
            render json: {data: "Ride canceled"}, status: :ok
        else
            error_resp = {
                error: "Ride not found, not canceled"
            }
            render json: error_resp, status: :unprocessable_entity
        end 
    end 

    private

    def set_ride
        @ride = Ride.find(params[:id])
    end 

    def ride_params
        params.require(:ride).permit(:date_time, :location_to, :location_from, :appointment_type, :passenger_id, :driver_id)

    end 

    
end
