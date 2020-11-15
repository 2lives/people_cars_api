require 'faker'
# Create 100 people
(0..100).each do
    Person.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email)
end
Car.create(year: 2_020, make: 'Tesla', model: 'P100D', price: 100_000)
Car.create(year: 2_016, make: 'Honda', model: 'Civic', price: 20_000)