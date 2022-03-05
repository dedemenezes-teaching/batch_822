# Aray to Hashes
students =     [ "Peter", "Mary", "George", "Emma" ]
student_ages = [ 24     , 25    , 22      ,  20    ]
# indexes         0        1       2          3

# Peter is 24 years old

students.each_with_index do |student, index|
  age = student_ages[index]
  puts "#{student} is #{age} years old"
end

# This is not IDIOMATIC
