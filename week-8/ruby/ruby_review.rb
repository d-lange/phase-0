# Reverse Words


# I worked on this challenge [by myself].
# This challenge took me [.5] hours.

# Pseudocode
# write a method that takes a string as an argument
# declare a local variable equal string argument and split characters = .split(' ')
# declare another local variable reverse_str equal an empty array
# iterate through words local variables length. Use .times
  # go through each word in the array and reverse it, set words equal to reverse_str
# return reverse_str local variable and join by " "


# Initial Solution

def reverse_words(string)
  words = string.split(' ')
  reverse_str = []

  words.length.times do |i|
    reverse_str[i] = words[i].reverse
  end

  return reverse_str.join(" ")
end


# Refactored Solution


# i dont think it needs refactoring


# Reflection

# What concepts did you review or learn in this challenge?

  # In this challenge I reviewed how to iterate a string, convert to an array, iterate through an array and use some built in methods.

# What is still confusing to you about Ruby?

  # I think just being more comfortable wit the fundamentals so that I can build on that knowledge for more complex solutions. Sometimes I just forget how to even get started. Pseudocode is probably where I need to improve a lot more.

# What are you going to study to get more prepared for Phase 1?

#   Within Ruby, I'm going to study loops and enumerables and using counters. Within JavaScript, loops. I also want to make my website better so I'll review some HTML and CSS more.