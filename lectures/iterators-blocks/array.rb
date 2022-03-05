musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason']
# indexes     0                1                 2               3
#                                                           musician.length - 1
p array.length
p array.size
p array.count

# CRUD

# Create
musicians << "Roger Waters"
musicians.push("Roger Waters")
musicians.insert(1, "Julia Guerreiro")
puts musicians
p musicians

# Read
p musicians[1]

# Update
musicians[2] = "Zeca Pagodinho"
p musicians

# Delete

# musicians.delete_at(0)
# musicians.delete("Roger Waters")
p musicians
