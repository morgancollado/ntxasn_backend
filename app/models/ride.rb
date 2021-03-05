class Ride < ApplicationRecord
    belongs_to :passenger, :class_name => "User"
    belongs_to :driver, :class_name => "User", optional: true 
    validates_presence_of :date_time, :location_to, :location_from, :appointment_type

    def strftime
        self.date_time.strftime("%A, %d %b %Y %l:%M %p")
    end 
end
