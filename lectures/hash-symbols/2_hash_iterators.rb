paris = {
  "country" => "France",
  "population" => 2211000
}

# Differs from array: the block takes two parameters, KEY and VALUE

paris.each do |key, value|
  puts "Paris #{key} is associated to #{value}"
end
