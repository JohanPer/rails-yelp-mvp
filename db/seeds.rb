# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number:"0345657876", category:"french"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number:"0345657876", category:"chinese"}
hammamet_tacos =  {name: "hammamet_tacos", address: "villeurbanneZer", phone_number:"0345657876", category:"belgian"}
burger_king =  {name: "burger_king", address: "35 rue machin chouette, lyon", phone_number:"0345657876", category:"italian"}
mc_do =  {name: "mc_do", address: "32 rue jarente lyon", phone_number:"0345657876", category:"japanese"}

[dishoom, pizza_east, hammamet_tacos, burger_king, mc_do].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
