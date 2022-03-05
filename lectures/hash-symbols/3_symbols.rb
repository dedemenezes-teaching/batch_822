cities = {
  'London' => {
    'country' => 'England',
    'monument' => 'Big Ben'},
  'Paris' => {
    'country' => 'France',
    'monument' => 'Tour Eiffel' }
}

cities['Paris']['country']
# "name" -> This is a string
# :name -> This is a symbol

# symbols as keys

cities = {
  :London => { :country => 'England', :monument => 'Big Ben'},
  :Paris => { :country => 'France', :monument => 'Tour Eiffel' }
}

# How to read

cities[:Paris][:monument] # => "Big Pen"
cities[:Paris]['monument'] # => nil, as the "monument" key doesn't exist


######## New syntaxxx ##########

# The : comes after the symbol, not before, and the => goes away

cities = {
  London: { country: 'England', monument: 'Big Ben' },
  Paris: { country: 'France',  monument: 'Tour Eiffel' }
}

# But that was just when creating the hash!
# To read it, we read it normally as :monument, not monument:

cities[:Paris][:monument] # => "Big Pen"
# cities[:Paris][monument:] # => SYNTAX ERROR
