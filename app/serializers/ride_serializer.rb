class RideSerializer
  include JSONAPI::Serializer
  attributes :date_time, :location_to, :location_from, :appointment_type, :passenger, :driver, :initial_pickup, :clinic_dropoff, :clinic_pickup, :final_dropoff, :stage
  attributes :date_time do |date_time|
    date_time.strftime
  end 
end
