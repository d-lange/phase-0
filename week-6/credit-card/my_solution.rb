# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [with: Kenton Lin].
# I spent [2.5] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard

  def initialize(num)
    @num = num.to_s
    if @num.length != 16
      raise ArgumentError.new("Please input a number with 16 digits")
    end
  end

  def check_card()

    number_array = @num.split('')
    number_array.map! {|num| num.to_i}


    (0...number_array.length).step(2).each {|x| number_array[x] = number_array[x] * 2}

   number_array.map! do |x|
      x.to_s.split('')
    end

    number_array.flatten!.map! do |num|
      num.to_i
    end
    sum = number_array.inject{|sum, x| sum + x}
    sum % 10 == 0 ? true : false
  end
end

card = CreditCard.new(4563960122001999)
card.check_card



# Refactored Solution


# Reflection

# What was the most difficult part of this challenge for you and your pair?

    # Understanding how to iterate through the numbers by every other and then multiplying just those numbers. Our logic was making sense. Putting it into code was really what slowed us down.

# What new methods did you find to help you when you refactored?

    # .inject using (:+) was really convenient in the last step of the validation process.

# What concepts or learnings were you able to solidify in this challenge?

    # Iterating an array was really solidified in this challange.