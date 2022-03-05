def greet(first_name, last_name)
  full_name = "#{first_name.capitalize} #{last_name.upcase}"
  # return "Hello, #{full_name}"
  greeting = yield(full_name)
  puts greeting
end

# puts greet('john', 'lennon') # "Hello, John LENNON"

# "Ola, John LENNON"
# "Hoi, John LENNON"
# "Hola, John LENNON"

greet('mariana', 'lima') do |anything|
  "Ola #{anything}"
end


greet('mariana', 'lima') do |anything|
  "Hoi #{anything}"
end


greet('mariana', 'lima') do |anything|
  "Hola #{anything}"
end
