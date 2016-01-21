# Count Between

# I worked on this challenge [by myself, with: ].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

def count_between(list_of_integers, lower_bound, upper_bound)
  return 0 if list_of_integers == 0 || upper_bound < lower_bound
  return list_of_integers.length if lower_bound == upper_bound
  between = (lower_bound..upper_bound).to_a
  list_of_integers.select {|v| between.include?(v)}.length
end