class UserSerializer
  include JSONAPI::Serializer
  attributes :name, :email, :phone_number,:passenger_rides, :driver_rides, :availability_hours_lower, :availability_hours_upper, :monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday
  attributes :passenger_rides do |user|
    RideSerializer.new(user.passenger_rides).as_json['data']
  end 
  attributes :driver_rides do |user|
    RideSerializer.new(user.driver_rides).as_json['data']
  end
end
