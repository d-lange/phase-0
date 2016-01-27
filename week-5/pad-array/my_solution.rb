# Pad an Array

# I worked on this challenge [with: Ayaz Uddin]

# I spent [2.5] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode
# checks parameters given to pad method
# IF length is longer than pad than RETURN nil
# Return argument instead of nil IF minimum size is less than or equal to length of array
# pad Always RETURN a new array
# pad bang should always RETURN old array with new arguments

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if min_size == 0
    print array
  elsif array.length < min_size
    until array.length == (min_size + 1)
      array.push(value)
    end
  end
  array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = []
  array.each do |num|
    new_array.push(num)
  end
  if min_size == 0
    print new_array
  elsif new_array.length < min_size
    until new_array.length == (min_size)
      new_array.push(value)
    end
  end
  new_array
end

# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
  if min_size == 0
    print array
  elsif array.length < min_size
    until array.length == (min_size + 1)
      array.push(value)
    end
  end
  array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = []
  array.each do |num|
    new_array.push(num)
  end
  if min_size == 0
    print new_array
  elsif new_array.length < min_size
    until new_array.length == (min_size)
      new_array.push(value)
    end
  end
  new_array
end


# 4. Reflection

# Were you successful in breaking the problem down into small steps?
    # I think we were able to break it down and the pseudocode helped, but we did get stuck on one part for a pretty long time.
# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
    # In the beginning we were, but towards the end the logic was starting to get tricky and we were unsure how to implement the nil within the return of the pad array.
# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
    # We ran into issues at first and we purposely tested unfinished code to see if we were on the right track. Eventually, we hit an error that we could not figure out, which was getting nil show up in the padded array. We resolved it by making an empty new_array and pushed the value to it without affecting the original array making it non-destructive.
# When you refactored, did you find any existing methods in Ruby to clean up your code?

# How readable is your solution? Did you and your pair choose descriptive variable names?
    # I think it's fairly readable for someone who knows the basics of Ruby. The logic behind the way it's written is straight-forward and the variable names are as you would expect.
# What is the difference between destructive and non-destructive methods in your own words?
    # In my own words, I would describe a destructive method that actually changes the original object rather than making a modification and not a permanent change like a non-destructive method.

