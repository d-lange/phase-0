# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution (Xin)
def my_array_finding_method(i_want_pets, thing_to_find)
  i_want_pets.select!{|item| item if item.to_s.include? thing_to_find}
  i_want_pets
end

def my_hash_finding_method(my_family_pets_ages, age_to_find)
  my_family_pets_ages.select! {|pet_name, age| age if age == age_to_find}
  my_family_pets_ages.keys
end

# input? an array and a string
# output? an array
# steps to take
# create an empty array
# iterate over the array
# check if element includes that string
# If it does, push element into new array
# return new array

# Person 1
def my_array_finding_method(array, string)
  new_array = []
  array.each do |word|
    word = word.to_s
    if word.include?(string)
      new_array.push(word)
    end
  end
  return new_array
end

# input? a hash and a integer
# output? a has of pet names with age
# steps to take
# create a hash
# iterate over the hash
# check if values equal age integer
# if it does, push key, value pair into new hash
# return new hash

def my_hash_finding_method(hash, integer)
  new_array = []
  hash.each do |key, value|
    if value == integer
      new_array.push(key)
    end
  end
  return new_array
end

# Identify and describe the Ruby method(s) you implemented.
# I implemented two methods #my_array_finding_method and #my_hash_finding_method that each take in two parameters.
# The #my_array_finding_method takes in an array(i_want_pets) and a letter ("t") and returns a new array (new_array) of all words containing that letter.
# The #my_hash_finding_method takes in a hash (my_family_pets_ages) and an integer(age) and returns a new array (new_array) of all dogs who are of that age.
# I would recommend writing out pseudocode before writing code - it helps!




# Person 2 (JONES)
def my_array_modification_method!(source, thing_to_modify)
 source.map! do |i|
    if i.is_a? Integer
      i + thing_to_modify
    else
      i = i
    end
  end
end

def my_hash_modification_method!(source, thing_to_modify)
 source.update(source) do |k,v|
    v += thing_to_modify
  end
end

# Identify and describe the Ruby method(s) you implemented.
#
# For the array I used .map, which is basically the destructive
# version of .each. I also used .is_a? to check if the element is
# an integer before doing math on it. Before I had this it was
# turning the non-integer elements to nil.
#
#For the hash method I used .update which is actually made for
# merging hashes as far as I can tell. I'm not sure if using it
# this way is a clever workaround or a crime against good practice.

#Person - 3 - Mike London

def my_array_sorting_method(array)
  p array.sort_by {|element| element.to_s}
end

def my_hash_sorting_method(hash)
  p hash.sort_by {|key, value| value}
end
5
# Identify and describe the Ruby method(s) you implemented.
# I used the sort_by command which then implemented for both a hash and an array.
# For the Array, I iterated over the elements, selected the elements and converted them to a string.
# For the Hash, I iterated over both the key and value and selected only the values to sort by.



# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.delete_if { |x| x.to_s.include? thing_to_delete }
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.delete_if { |x,y| x == thing_to_delete  }
end

# Identify and describe the Ruby method(s) you implemented.
#
# For the array method I chose to use delete_if method and used include? to check what to delete
#
# For the hash method I used the same delete_if method and set the key in the hash to equal the thing_to_delete

# Person 5 - Ian Fricker
def my_array_splitting_method(source)
  strings, nums = source.partition {|x| x.is_a? String}
  result = [nums] + [strings]
end

def my_hash_splitting_method(source, age)
  young, old = source.partition {|x,y| y < age}
  result = [young] + [old]
end

# Identify and describe the Ruby method(s) you implemented.
#
# for the array method I decide to split the array into two different arrays.  One for the numbers and one for strings.  I did this using the .partition and .is_a? String method.
#
# For the hash method I split into two arrays by age using the .partion method.


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#