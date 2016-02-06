# Your Names
# 1) David Lange
# 2) Kevin Sullivan

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.


# pseudocode
# inputs:
# String: item_to_make
# Integer: num_to_make

# outputs:

def serving_size_calc(item_to_make, num_of_ingredients)
# library = { "item_to_make": "serving_size" }
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  raise ArgumentError.new("#{item_to_make} is not a valid input") unless library.include? (item_to_make)

# people / item_to_make
  serving_size = library[item_to_make]

# left over ingredients
  remaining_ingredients = num_of_ingredients % serving_size

# ( 5 ingredients ) / ( serving_size / num_of_ingredients)
  cake = 0
  cookie = 0
  until remaining_ingredients == 0
    if remaining_ingredients >=5
      remaining_ingredients = remaining_ingredients -5
      cake +=5
    else
      remaining_ingredients = remaining_ingredients - 1
      cookie +=1
    end
  end

  puts "You can make #{num_of_ingredients / serving_size} of #{item_to_make}."
  if cake != 0 || cookie != 0
    puts "You can make extra #{cookie} cookies and extra #{cake} cakes."
  end





  # if remaining_ingredients == 0
  #   return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  # else
  #   return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  # end

end


#   case remaining_ingredients
#   when 0
#     return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
#   else
#     return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
#   end
# end


# Driver Code

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
