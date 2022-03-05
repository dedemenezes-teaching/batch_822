musicians = [
  'David Gilmour', # 0
  'Roger Waters',  # 1
  'Richard Wright',# 2
  'Nick Mason',    # 3
  'Carlos Eduardo' # 4 || array.length - 1
]
#  indexes     0                1                 2               3
#                                                      musician.length - 1
range = (0..3).to_a
# p musicians.length
# for musician in musicians
#   puts musician
# end

for index in (0..musicians.length - 1)
  puts "- #{musicians[index]}"
end

# - David Gilmore
# - Roger Waters
# - Richard Wright
