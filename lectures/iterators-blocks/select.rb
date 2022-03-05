musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason']
#  indexes     0                1                 2               3
#

h_musicians = musicians.select do |element|
  # CONDITION
  element.start_with?("R")
end

p h_musicians


# new_array = []
# musicians.each do |element|
#   if element.start_with?("R")
#     new_array << element
#   end
# end
# p new_array
