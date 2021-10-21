# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# puts 'creating parkings'
# 5.times do
#   parking = Parking.create(
#     title: Faker::Name.title,
#     address: Faker::Address.street_address,
#     description: Faker::PhoneNumber.phone_number,
#     category: Faker::Movie.title
#   )
#   puts "parking #{parking.id} is created"
# end

# puts 'done'


puts "Wiping seeds"
Parking.destroy_all
User.destroy_all
puts "Creating seeds"

user_one = User.create(email: "raja@wagon.com", password: "1234534")
user_two = User.create(email: "philip@wagon.com", password: "1234534")
user_three = User.create(email: "victor@wagon.com", password: "1234534")
user_four = User.create(email: "hannah@wagon.com", password: "1234534")
user_five = User.create(email: "toni@wagon.com", password: "1234534")
user_six = User.create(email: "admin@wagon.com", password: "1234534")

parking_one = Parking.create(title: "Berlin 100", street_address: "Hoxton Street", description: "blah", city: "berlin", category: "chinese", user_id: 14)
parking_two = Parking.create(title: "Hamburg 200", street_address: "Hoxton TwoStreet", description: "blah", city: "hamburg", category: "italian", user_id: 15)
parking_three = Parking.create(title: "Hoxton 300", street_address: "Hoxton ThreeStreet", description: "blah ", city: "berlin", category: "japanese", user_id: 16)
parking_four = Parking.create(title: "Hoxton 400", street_address: "Hoxton FourStreet", description: "blah", city: "hamburg", category: "french", user_id: 17)
parking_five = Parking.create(title: "Hoxton 500", street_address: "Hoxton FiveStreet", description: "blah", city: "berlin", category: "belgian", user_id: 18)

puts "Seeds created!"
