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

