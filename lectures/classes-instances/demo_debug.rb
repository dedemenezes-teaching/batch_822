require 'pry-byebug'

def full_name(first, last)
  binding.pry
  first_name = first.capitalize
  # this is what you did
  # p first_name

  # this what you DO!
  last_name = last.capitalize
  # binding.pry
  "#{first_name} #{last_name}"
end


puts full_name("rafael", "abadesso")
