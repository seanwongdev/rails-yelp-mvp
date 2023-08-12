# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating data...'

curry_pok = { name: 'Curry Pok', address: '111 Temasek Avenue', phone_number: '69283292', category: 'chinese' }
chicken_frynch = { name: 'Chicken Frynch', address: '123 French Avenue', phone_number: '64655432', category: 'french' }
belgian_gian = { name: 'Belgian Gian', address: '123 Bel Gian Road', phone_number: '68988233', category: 'belgian' }
unagi_don = { name: 'Unagi Don', address: '1 Tokyo Kyoto', phone_number: '62332333', category: 'japanese' }
italiano = { name: 'Italiano', address: '51 Rome Street', phone_number: '68892333', category: 'italian' }

[curry_pok, chicken_frynch, belgian_gian, unagi_don, italiano].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
