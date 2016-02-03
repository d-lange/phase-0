# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution

class Die
  def initialize(labels)
    @sides = labels
    unless labels.length > 0
      raise ArgumentError.new("Array cannot be empty")
    end
  end

  def sides
    @sides.length
  end

  def roll
    @roll = @sides[rand(sides)]
  end
end



# Refactored Solution








# Reflection

# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

    # The main differenece is instead of a number its taking an array. To accomplish this @sides is equal to the array and returns the length of the array. When rolled the random number generator outputs a position in the array instead of the random number.

# What does this exercise teach you about making code that is easily changeable or modifiable?

    # I was able to use my old code to remind me how I got it working.  I did come to a few problems but it was fairly simple to figure out.

# What new methods did you learn when working on this challenge, if any?

    # I don't think I learned new methods in this challenge.

# What concepts about classes were you able to solidify in this challenge?

    # Just the way classes communicate.