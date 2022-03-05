# When you need to complete a complex challenge
# First try to make it work in the simplest one

# After that, you can move to the advanced parts

def tag(tag_name, content, attributes = {})
  tag_attributes = attributes.map { |key, value| "#{key}='#{value}'" }.join(" ")
  "<#{tag_name} #{tag_attributes}>#{content}</#{tag_name}>"
end

p tag("h1", "Hello world")

# This is just to separate in the terminal the different method calls
puts "###################"

p tag("h1", "Hello world", class: "bold")

# This is just to separate in the terminal the different method calls
puts "###################"

p tag("a", "Le Wagon", { href: "http://lewagon.org", class: "btn" })
