musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason']
#  indexes     0                1                 2               3
#                                                           musician.length - 1

# FIRST NAMES
first_names = musicians.map do |musician|
  musician.split(" ").first
end

p first_names
# ['David', 'Roger', 'Richard',...]



# UPCASED MUSICIANS
upcased_musicians = musicians.map do |musician|
  musician.upcase
end

p upcased_musicians
p musicians
