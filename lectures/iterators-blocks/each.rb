musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason']
#  indexes     0                1                 2               3
#                                                           musician.length - 1

musicians.each do |name|
  puts "Hello, #{name}"
  # RUN ANY CODE
end

# Hello, David Gilmore
# Hello, Roger Waters
# Hello, Richard Wright

musicians.each_with_index do |element, index|
  puts "#{index + 1} - #{element}"
end

# 1 - David Gilmore
# 2 - Roger Waters
# 3 - Richard Wright
# [...]
