# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "french" }
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian" }
pizzou = { name: "Pizzou", address: "1 rue de Douai, Paris 9", category: "french" }
caly_sushi = { name: "Caly Sushi", address: "23 rue Notre-Dame-de-Lorette, Paris 9", category: "japanese" }
pinkmama = { name: "PinkMama", address: "20 rue de Douai, Paris 9", category: "italian" }


[ dishoom, pizza_east, pizzou, caly_sushi, pinkmama ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
