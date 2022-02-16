puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', stars: 5, chef: 'Marie' }
pizza_east =  { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', stars: 4, chef: 'Bobby' }
circle = { name: 'Circle', address: 'Munich', stars: 5, chef: 'Sarah' }
square = { name: 'Square', address: 'Munich', stars: 4, chef: 'Jo' }

[dishoom, pizza_east, circle, square].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
