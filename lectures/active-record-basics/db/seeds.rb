# This is where you can create initial data for your app.
require 'faker'

puts "Populating db..."

# 100.times do |i|
#   Restaurant.create(name: "Restaurant #{i}", address: "Rua #{i}", rating: (1..5).to_a.sample)
# end

10.times do
  Restaurant.create(
    name: Faker::Movies::StarWars.character,
    address: Faker::Movies::HarryPotter.location,
    rating: (1..5).to_a.sample
  )
end

puts "#{Restaurant.count} restaurants created"
