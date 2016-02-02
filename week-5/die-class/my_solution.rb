# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [1] hours on this challenge.

# 0. Pseudocode

# Input: number
# Output: random number 1 to number
# Steps:

# create class called die
# it will take one argument for sides
# initialize the sides so the class can access the argument
# sides must be greater than 1 or an error
# should return a random number between 1 and given number
# use rand method


# 1. Initial Solution

# class Die
#   def initialize(sides)
#     @sides = sides
#     if sides < 1
#       raise ArgumentError
#     end
#   end

#   def sides
#     return @sides
#   end

#   def roll
#     return rand(1..@sides)
#   end
# end



# 3. Refactored Solution

class Die

  attr_reader :sides

  def initialize(sides)
    @sides = sides
    if sides < 1
      raise ArgumentError
    end
  end

  def roll
    return rand(1..@sides)
  end
end

# 4. Reflection

# What is an ArgumentError and why would you use one?

    # An ArgumentError will show that you are giving the wrong number of arguments.

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

    # A new ruby method I implemented was the rand method. It generates a random number based on the range I set.

# What is a Ruby class?

    # A ruby class is a blueprint for what the program is can do.

# Why would you use a Ruby class?

    # Because a class holds multiple methods that are instrumental for the program to function the way it is designed to. It also allows for other manipulation of data as there are methods in classes that can be used in different ways.

# What is the difference between a local variable and an instance variable?

    # A local variable is a variable that can only be accessed inside of a specific method whereas an instance variable can be accessed anywhere.

# Where can an instance variable be used?

    # Anywhere in the class as long as it is initialized.