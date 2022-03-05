require 'faker'

RESTAURANT_TYPE = %w(Burger Pizzaria)

puts "Populating DB..."

10.times do
  Restaurant.create(
    name: "#{Faker::Games::Pokemon.move}'s #{RESTAURANT_TYPE.sample}",
    city: Faker::Movies::StarWars.planet
  )
end

puts "Seeds done!"
puts "zo/"
