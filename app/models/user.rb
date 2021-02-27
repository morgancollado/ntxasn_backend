class User < ApplicationRecord
    has_many :passenger_rides, :class_name => "Ride", :foreign_key => "passenger_id"
    has_many :driver_rides, :class_name => "Ride", :foreign_key => "driver_id"
    has_secure_password
    validates_presence_of :email, :name, :phone_number
end
