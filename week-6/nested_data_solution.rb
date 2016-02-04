# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
p array[1][1][2][0]
# ============================================================



# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# p hash{outer:}{inner:}{"almost"}{3}
# p hash[outer:][inner:]["almost"][3]
p hash[:outer][:inner]["almost"][3]
# ============================================================



# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# p nested_data[:array][0][:hash]
# p nested_data[:array]["array"][:hash]
# p nested_data[:array][:hash]
p nested_data[:array][1][:hash]
# ============================================================



# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array = number_array.map { |x|
  if x.kind_of? Integer
    x += 5
  else x.kind_of? Array
    x.map { |inner| inner += 5 }
  end
}

# number_array = number_array.flatten.map {|element| element + 5}

# p number_array


# Bonus:

# startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

# startup_names = startup_names.flatten.map {|string| string + 'ly'}

# p startup_names

# REFLECTION

# What are some general rules you can apply to nested arrays?

    # Follow the indexes to navigate through each array
    # you can set loops to iterate through them, enumerables, .each, .map, etc.

# What are some ways you can iterate over nested arrays?

    # you can set loops to iterate through them, enumerables, .each, .map, etc.

# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

    # .flatten is an interesting method. It didn't print out exactly what I wanted, but it did iterate through the structure. .map is a familiar one and it worked nicely here. of course .each is familiar too, but it didn't retain the structure that the original array had. Atleast not when it printed to the console.