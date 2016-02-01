# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode
# Logic: goal is to insert a comma every 3 characters from the last character in a string
# convert an integer into an string
# split into characters
# reverse string and divide the string 3 from the last character
# join the string together
# reverse it BACK
# join the two strings with a comma in between
#


# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution
def separate_comma(number)
  if number > 999
    number.to_s
    p number.to_s.split(//).reverse.each_slice(3).map(&:join).reverse.join(',')
  else
    p number.to_s
  end
end


# 2. Refactored Solution
def separate_comma(number)
  if number > 999
    p number.to_s.split(//).reverse.each_slice(3).map(&:join).reverse.join(',')
  else
    p number.to_s
  end
end

# 3. Reflection

# What was your process for breaking the problem down? What different approaches did you consider?
# Was your pseudocode effective in helping you build a successful initial solution?
# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
# How did you initially iterate through the data structure?
# Do you feel your refactored solution is more readable than your initial solution? Why?