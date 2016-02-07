# Your Names
# 1) David Lange
# 2) Kevin Sullivan

# We spent [2] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  raise ArgumentError.new("#{item_to_make} is not a valid input") unless library.include?(item_to_make)

  serving_size = library[item_to_make]

  remaining_ingredients = num_of_ingredients % serving_size

  puts "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"

  case
  when remaining_ingredients >= 7
    puts "You can also make a pie."
  when (remaining_ingredients >= 5) && (remaining_ingredients < 7)
    puts "You can also make a cake."
  when (remaining_ingredients >= 1) && (remaining_ingredients < 5)
    puts "You can also make a cookie."
  end
end

# Driver Code

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

# What did you learn about making code readable by working on this challenge?


    # Looking at the code you could tell it wasn't exactly the cleanest code to execute what we wanted. Using counter variable and iterating through made it easier.


# Did you learn any new methods? What did you learn about them?


    # I learned about .include? and used it to implement the argument in one line of code.

# What did you learn about accessing data in hashes?


    # pay attention to how you identify the key and the value when writing the code.


# What concepts were solidified when working through this challenge?


    # I think using case/when statement made it the easiest to execute and read. I could've over complicated it using a counter to iterate through, but we decided this was easiest.