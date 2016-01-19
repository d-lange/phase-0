###What does puts do?

puts stands for "put string" and returns nil and prints the output to the console with a new line.
###What is an integer? What is a float?

An integer is a number without a decimal point. A float is a number with decimal points.

###What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

When dividing a float, you can get the exact calculation because you include decimal point. With integer division, the result will always round down.

In ruby you have two ways of displaying numbers: 1) a float: the number with a decimal point which can calculate the exact number and 2)an integer: a number as is with no decimal point. When you do division wih these two kinds of numbers in ruby, the float will be able to tell you if its 4.5 or 4.2 for example, while the integer always rounds down. If you did 9/4, it would equal 2.

'''
puts 24*365
'''
'''
puts 365*10*60*24
'''

[4.2.1](https://github.com/d-lange/phase-0/blob/master/week-4/defining-variables.rb)
[4.2.2](https://github.com/d-lange/phase-0/blob/master/week-4/simple-string.rb)
[4.2.3](https://github.com/d-lange/phase-0/blob/master/week-4/basic-math.rb)

###How does Ruby handle addition, subtraction, multiplication, and division of numbers?

Ruby can handle each of these with ease. It works in order of PEMDAS. It's also important to know whether you're working with integers or floats.

###What is the difference between integers and floats?

Integers are whole numbers with no decimals. Floats are numbers with decimal points.

###What is the difference between integer and float division?

Integer division will always round down as a result of being whole numbers. Float division results in a more exact answer because it includes decimals.

###What are strings? Why and when would you use them?

Strings are objects in Ruby that have information inside it, like letters, numbers, symbols, etc. We use strings to identify or hold information for us. They can be used to be stored inside a variable, etc.

###What are local variables? Why and when would you use them?

Local variables start with a lower case letter or an underscore. They are accessible after its initialization.

###How was this challenge? Did you get a good review of some of the basics?

Yeah I felt a little rusty, but it's coming back to me slowly but surely. I'm excited to start this part of the program.