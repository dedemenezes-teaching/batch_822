musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason']
#  indexes     0                1                 2               3
#                                                           musician.length - 1
#[....]

h_names = musicians.count do |musician|
  # CONDITION
  # anything that return true || false
  musician.start_with?("R") || musician.start_with?("D")
end

#[....]

puts h_names
