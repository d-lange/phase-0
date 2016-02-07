# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: Kenton Lin ].
# I spent [2.5] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
 def initialize(number)
    @number = number.to_s
    raise ArgumentError.new unless @number.length == 16
  end

  def check_card
    @number = @number.split('').map { |num| num.to_i }.reverse!
    @new_array = []
    @number.each_with_index do |num, index|
    @new_array.push(num * 2) unless index % 2 == 0
    @new_array.push(num) unless index % 2 != 0
    end

    @new_array = @new_array.map { |num| num.to_s }.join.split('').map { |num| num.to_i }

    if @new_array.inject(:+).to_f % 10.0 == 0.0
      true
    else
      false
    end

  end
end

validate_card = CreditCard.new(4563960122001999)
p validate_card.check_card



# Refactored Solution


# Reflection

# What was the most difficult part of this challenge for you and your pair?

    # Understanding how to iterate through the numbers by every other and then multiplying just those numbers. Our logic was making sense. Putting it into code was really what slowed us down.

# What new methods did you find to help you when you refactored?

    # .inject using (:+) was really convenient in the last step of the validation process.

# What concepts or learnings were you able to solidify in this challenge?

    # Iterating an array was really solidified in this challange.