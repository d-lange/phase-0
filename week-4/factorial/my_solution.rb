# Factorial

# I worked on this challenge [with: Mike Gwozdek].

# Pseudocode
# establish the sum to 1 because this is the lowest it should go
# use the .upto method on sum so that sum will count up to the number that is chosen for the argument
# then we want the sum to be equal to itself multiplied by the next number up to the desired number chosen for the argument in the method
#

# Your Solution Below
def factorial(number)
  sum = 1
  sum.upto(number) { |n| sum *= n }
  return sum
end
