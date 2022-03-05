# WE NEED TO FOLLOW THE CONVENTIONS
# file_name is lower_snake_case
# ClassName would be UpperCamelCase
# They need to be exactly the same!
# Singer -> singer.rb
# SportsCar -> sports_car.rb

class Car
  # We can call attr_reader -> shortcut to define methods that will retrive instance variables values
  # SAME NAME as your INSTANCE VARIABLES

  # remove this you will see UNDEFINED METHOD some instance variables name
  # attr_writer :color
  attr_reader :engine_started, :brand # remoevd :color -> added accessor

  # if you need reader and writer, IF YOU NEED
  attr_accessor :color

  # Constructor, only executed ONCE. when .new is called
  def initialize(color, brand = 'Ferrari')
    # DATA/STATE -> Instance Variables
    # engine not running
    @engine_started = false
    # color
    @color = color
    # brand
    @brand = brand
  end

  # instance method that can be called
  # on any instance of the Car class
  def start_engine
    # start_fuel_pump
    inject_fuel
    # power_the_battery
    power_battery
    @engine_started = true
  end

  private

  # Call it from the test file and see....line 23
  def inject_fuel
    puts "Injecting fuel..."
    sleep(0.02)
    # COMPLEX STUFF
    puts "Done"
  end

  def power_battery
    puts "Powering the battery..."
    sleep(0.02)
    # COMPLEX STUFF
    puts "Done"
  end

  # def paint(new_color)
  #   @color = new_color
  # end

  # attr_writer

  # def color=(new_color)
  #   @color = new_color
  # end

  # attr_reader is creating this exactly methods behind the scenes

  # def engine_started
  #   @engine_started
  # end

  # def color
  #   @color.capitalize
  # end

  # def brand
  #   @brand.capitalize
  # end
end
