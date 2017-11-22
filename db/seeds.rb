# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# db/seeds.rb
puts 'Cleaning database...'
Restaurant.destroy_all
Review.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    phone_number: "0675485844",
    category: "chinese"
  },
  {
    name:         "La truffière",
    address:      "4 rue Blainville 75005 Paris",
    phone_number: "0675485845",
    category: "french"
  },
  {
    name:         "Le pré catelan",
    address:      "route de Suresnes 75016 Paris",
    phone_number: "0675485843",
    category: "italian"
  }
]

Restaurant.create!(restaurants_attributes)


good = Review.new(content: "chouette !!", rating: 5)
epicure = Restaurant.first
good.restaurant = epicure
good.save

puts 'Finished!'



