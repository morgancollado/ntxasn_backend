class UserSerializer
  include JSONAPI::Serializer
  attributes :name, :email, :phone_number, :passenger_rides, :driver_rides
end
