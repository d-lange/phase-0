# Calculate the mode Pairing Challenge

# I worked on this challenge [with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode
# define a method of mode with an argument of array
# set a counter local variable to a new hash with 0 as an argument
# iterate each array with an incremented counter
# new local variable called max which equals the max of each value showing up
# set new local variable equal to the selection of the counter that has the value equal to max variable
# set same variable to read the keys for each.

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution
# def mode(array)
#   counter = Hash.new(0)
#   array.each { |i| counter[i]+=1 }
#   max = counter.values.max
#   a = counter.select { |k, v| v == max }
#   a.keys
# end

# 3. Refactored Solution
def mode(array)
  counter = Hash.new(0)
  array.each { |i| counter[i]+=1 }
  max = counter.values.max
  a = counter.select { |k, v| v == max }
  a.keys
end



# 4. Reflection

# Which data structure did you and your pair decide to implement and why?
# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
# What issues/successes did you run into when translating your pseudocode to code?
# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?