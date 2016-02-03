# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.

# Pseudocode

# Input: an integer
# Output: a symbol representing a clue as to if the guess is close or not or equal
# Steps:
  # initialize @answer instance variable
   # make guess method take a number as an argument
   # set up if, elsif statements setting guess as an instance variable equal to the symbols they should output
   # make another method that will return true or false depending on if guess instance variable equals the correct symbol


# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(number)
    if number > @answer
      @guess = :high
    elsif number < @answer
      @guess = :low
    elsif number == @answer
      @guess = :correct
    end
  end

  def solved?
    if @guess == :correct
      return true
    else
      return false
    end
  end
  # Make sure you define the other required methods, too
end




# Refactored Solution

class GuessingGame

  def initialize(answer)
    @answer = answer
  end

  def guess(number)
    @guess =
      number > @answer ? :high :
      number < @answer ? :low :
      :correct
  end

  def solved?
    @guess == :correct ? true : false
  end

end

# Reflection

# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

    # If you were to make a class object for Song, an instance variable would be the building blocks of the song, such as artist, songname, duration and you'd modify this object by filling in the criteria that meets the needs at the time.

# When should you use instance variables? What do they do for you?

    # You should use istance variables when you want to use that variable in other methods. They let you use the value of that variable in other methods.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

    # I had a problem with the solved? method.  I was not passing through the @guess correctly.  After that, it was simple to finish.

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?

    # Symbols were helpful for this assignment because they wanted us to return the low and high and correct.  If it were just did you guess right or wrong you could have just used true/false.  This was able to give the program more options.
