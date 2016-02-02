# Numbers to Commas Solo Challenge

# I spent [2.5] hours on this challenge.

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


# What is the input? a positive integer
# What is the output? (i.e. What should the code return?) the number as a string with commas every 3rd character from the back.
# What are the steps needed to solve the problem?
# turn the ingeter into a string
# put the string into an array and split the string up into its individual charatcters.
# get the length of the array.
# for every 3rd negative index, add a comma.


# 1. Initial Solution
# def separate_comma(number)
#   number = number.to_s.reverse.split("")
#   num_length = number.length
#   i = 1
#   n = 0
#   until number[i*3] == nil
#     if num_length > 3 && (i*3) < num_length
#       number.insert(((i*3)+n), ",")
#     end
#     i += 1
#     n += 1
#   end
#   number = number.join
#   number.reverse
# end


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

  # First I turned the integer into a string
  # I then reversed the number so it would be easier to put commas in it and then I split up all the characters and put it into an array.
  # Then created a variable that held the length for the number array.
  # I created an i and n variable as counting variables.
  # I created a while loop that would check to see if there was still numbers left in the array.
  # Next i creatred an if statement that and inside the variable i included code to put in a comma to the number if all the parameters where met.

# Was your pseudocode effective in helping you build a successful initial solution?

  # It helped me shape the logic needed to maneuver through the challenge. I ran into a few issues, but I knew what needed to be done.

# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

  # .split, .each_slice, .map and .join were all useful in refactoring. It makes it very straight forward. It took me a while to figure out how to write all the methods together to get it to work, but it actually made a lot of sense once I got it working.


# How did you initially iterate through the data structure?

  # I iterated through the data with an until loop and if statement.

# Do you feel your refactored solution is more readable than your initial solution? Why?

  # I think so, even if you don't understand what each built in method does, it actually reads straight forward and I think someone who didn't know programming could assume what they did.