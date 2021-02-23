# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Ride.destroy_all
User.create(email: "morgan.collado@gmail.com", name: "morgan collado", password: "password", phone_number: 7817245310)



require 'faker'
require 'byebug'

20.times do
    User.create(
        name: Faker::Name.name,
        email: Faker::Internet.unique.email,
        phone_number: Faker::Number.number(digits: 10),
        password: "hello"
    )
end 

20.times do 
    
    Ride.create(
        date_time: Faker::Time.forward(days: 15, period: :morning),
        location_to: Faker::Address.full_address,
        location_from: Faker::Address.full_address,
        appointment_type: "Consult",
        passenger_id: User.all.sample.id,
        driver_id: User.all.sample.id
    )
    
end 