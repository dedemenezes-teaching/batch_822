require_relative 'car'

red_ferrari = Car.new('blue')

puts "Is my car started? #{red_ferrari.engine_started ? "Up and running!" : "Nope! Did you started the engine?" }"

puts "Starting engine..."
sleep(0.03)
red_ferrari.start_engine

puts "Is my car started? #{red_ferrari.engine_started ? "Up and running!" : "Nope! Did you started the engine?" }"

puts "What's the color of my car? #{red_ferrari.color}"

puts "What's the brand of my car? #{red_ferrari.brand}"

puts "WANT TO PAINT MY CAR!"

red_ferrari.color = "dark red"

puts "What's the color of my car? #{red_ferrari.color}"

# puts "Can I inject fuel? #{red_ferrari.inject_fuel}"
