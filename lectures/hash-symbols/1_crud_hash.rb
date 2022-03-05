# Defining new hash
hash = {} # hash.size => 0

paris = {
  'country' => 'France',
  'population' => 2211000
}

# Create new KEY-VALUE pair
paris['monument'] = 'Eiffel Tower'

# Update
paris['population'] = 2_000_000

# Read
paris['country']

# Destroy KEY-VALUE pair
paris.delete('monument')

# You can have complex hashes
lw_cities = {
  'Rio' => {
    'country' => 'Brasil',
    'population' => 212_000_000
  },
  'Paris' => paris
}

# READ the value by the key
lw_cities['Rio']['country'] # 'Brasil'
lw_cities['Rio']['population'] # 212000000

lw_cities['Paris']['population'] # 2_000_000
