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
User.destroy_all
Parking.destroy_all

puts "Creating seeds"

user_one = User.create(email: "raja@wagon.com", password: "1234534")
user_two = User.create(email: "philip@wagon.com", password: "1234534")
user_three = User.create(email: "victor@wagon.com", password: "1234534")
user_four = User.create(email: "hannah@wagon.com", password: "1234534")
user_five = User.create(email: "toni@wagon.com", password: "1234534")
user_six = User.create(email: "admin@wagon.com", password: "1234534")

puts "Users have been created"

# parking_one = Parking.create(title: "Victor's Dream", street_address: "Willy-Brandt-Straße 1", description: "Bundeskanzleramt Berlin", city: "Berlin", category: "Luxery", user_id: user_two.id)
# parking_two = Parking.create(title: "Philip's Sunny Place", street_address: "Hachmannplatz 16", description: "Hamburger Bahnhof", city: "Hamburg", category: "Germany", user_id: user_two.id)
# parking_three = Parking.create(title: "Hanna's Galaxy", street_address: "Champ de Mars, 5 Av. Anatole France", description: "Eiffelturm", city: "Paris", category: "French", user_id: user_two.id)
# parking_four = Parking.create(title: "Leo's Spot", street_address: "Times Square", description: "Broadway", city: "New York", category: "USA", user_id: user_two.id)
# parking_five = Parking.create(title: "Raja's Kingdom", street_address: " C. Real de la Alhambra", description: "Place to be when you are death;)", city: "kasbah", category: "Spain", user_id: user_two.id)

puts "Seeds created!"
