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

