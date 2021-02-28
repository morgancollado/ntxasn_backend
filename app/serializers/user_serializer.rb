class UserSerializer
  include JSONAPI::Serializer
  attributes :name, :email, :phone_number, :passenger_rides, :driver_rides
  attributes :passenger_rides do |user|
    RideSerializer.new(user.passenger_rides).as_json['data']
  end 
  attributes :driver_rides do |user|
    RideSerializer.new(user.driver_rides).as_json['data']
  end
end
