class RideSerializer
  include JSONAPI::Serializer
  attributes :date_time, :location_to, :location_from, :appointment_type, :passenger, :driver
  attributes :date_time do |date_time|
    date_time.strftime
  end 
end
