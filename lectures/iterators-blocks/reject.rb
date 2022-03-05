musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason']
#  indexes     0                1                 2               3
#

other_musicians = musicians.reject do |element|
  # CONDITION
  element.start_with?("R")
end
p other_musicians

other_musicians_2 = musicians.reject { |element| element.start_with?("R") }
p other_musicians_2
