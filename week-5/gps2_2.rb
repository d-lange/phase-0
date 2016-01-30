# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # create a empty hash and add keys and values
  # split the string that returns a list of array
  # push each item in the array into empty hash
  # set default quantity to 0
  # print the list to the console [can you use one of your other methods here?]
# output: hash
def grocery_list(empty_string)
  hash = Hash.new(1)
  array = empty_string.split(" ").each { |x| hash[x]=1 }
  # array.each { |x| hash[x]=1 }
  p hash
end

grocery_list("Carrots Apples Cereal Pizza")

hash = grocery_list("Carrots Apples Cereal Pizza")
# Method to add an item to a list
# input: hash, item name and optional quantity
# steps:
  # hash["newKey"] = newValue
#   p hash
# output:
def add_item(hash, new_key, new_value)
  hash[new_key] = new_value
  p hash
end

add_item(hash, "Lemonade", 2)
add_item(hash, "Tomatoes", 3)
add_item(hash, "Onions", 1)
add_item(hash, "Ice Cream", 4)

# Method to remove an item from the list
# input: hash, key
# steps:
# define a new method
# remove key-value pair
# print hash
# output:

def remove_item(hash, key)
  hash.delete(key)
  p hash
end

remove_item(hash, "Lemonade")

# Method to update the quantity of an item
# input: hash, key, value
# steps:
# create update_item method
# parameters accepting hash, key, value
# push each new value to key within the hash
# output:

def update_item(hash, key, value)
  hash[key] = value
  p hash
end

update_item(hash, "Ice Cream", 1)

# Method to print a list and make it look pretty
# input: hash
# steps:
# define a method print_list
# puts hash
# output:


def print_list(hash)
  hash.each { |key, value| puts "#{value}: #{key}" }
end

print_list(hash)

# Reflection

# What did you learn about pseudocode from working on this challenge?

# I learned how important it was to really break down what we wanted in english first. The first method to get everything started was the most complicated but each one after that became simpler.

# What are the tradeoffs of using Arrays and Hashes for this challenge?

# The tradeoffs of using Arrays and Hashes for this challenge really just limit what we can do with our list. With an array, we were able to create a list, simply of things we want to buy. With a hash, we then could establish a quantity or other value that would be set to someting we want to buy. From here, we're left with ways we can iterate the hash, whether it's adding a new item, removing an item, or changing a quantity of an item (the value of a given key).

# What does a method return?

# A method returns one or more values depending on the arguments put into the method. When we call the method, we'd then fill in those arguments with what we want to change depending on what is specified inside the method relating to the arguments.

# What kind of things can you pass into methods as arguments?

# You have a lot of flexibility in the arguments you can pass into methods. You can pass a variable, a default value, an array, a hash, etc.

# How can you pass information between methods?

#You can create a variable outside of the method and create a local variable equal to that variable that was established outside of the method.

# What concepts were solidified in this challenge, and what concepts are still confusing?

# Turning an array into a hash was a concept that was solidified, as well as iterating a hash. These were all things I wasn't sure how to do. Modifying a single value for a key was also tricky, but much simpler than expected.