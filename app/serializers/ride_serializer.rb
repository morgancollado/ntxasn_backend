class RideSerializer
  include JSONAPI::Serializer
  attributes :date_time, :location_to, :location_from, :appointment_type, :passenger, :driver
end
