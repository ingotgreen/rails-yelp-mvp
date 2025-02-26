# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
restaurants = [
  { name: "Epicure", address: "75008 Paris", phone_number: "01 40 07 00 00", category: "french" },
  { name: "Sushi Samba", address: "London", phone_number: "020 3053 0000", category: "japanese" },
  { name: "Pizza East", address: "Shoreditch, London", phone_number: "020 7729 1888", category: "italian" },
  { name: "Chez Léon", address: "Brussels", phone_number: "+32 2 511 14 15", category: "belgian" },
  { name: "Din Tai Fung", address: "Taipei", phone_number: "+886 2 2321 8928", category: "chinese" }
]

restaurants.each { |restaurant| Restaurant.create!(restaurant) }

puts "Finished!"
