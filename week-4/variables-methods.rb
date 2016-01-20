# Full name greeting program
puts "Hello, what is your first name?"
first_name = gets.chomp
puts "What is your middle name?"
middle_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp
puts "Greetings #{first_name} #{middle_name} #{last_name}!"

#Bigger, Better, Favorite number
puts "What is your favorite number?"
fav_num = gets.chomp.to_i
big_num = fav_num + 1
puts "But #{big_num} is a bigger and better number!"

=begin
How do you define a local variable?

A local variablehas a name starting with a lower case letter or an underscore. A local variable can also only be identified in a method, module, or block.

How do you define a method?

A method is a set of code that establishes a purpose and when invoked, will accomplish a task that could be rather complex.

What is the difference between a local variable and a method?

A local variable would be inside a method storing some sort of data, while a method would use the local variable as part of it's way of establishing it's purpose.

How do you run a ruby program from the command line?

ruby ruby_program.rb

How do you run an RSpec file from the command line?

rspec ruby_program_spec.rb

What was confusing about this material? What made sense?

Nothing was too confusing about this material. I fell into trouble when writing my methods. I used puts instead of return when doing the math methods.But I was able to figure it out. Everything else made sense. I'm excited to be back to Ruby!

4.3.1
https://github.com/d-lange/phase-0/blob/master/week-4/address/my_solution.rb

4.3.2
https://github.com/d-lange/phase-0/blob/master/week-4/math/my_solution.rb

=end