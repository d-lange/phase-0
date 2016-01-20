# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [1] hour on this challenge.

# --- error -------------------------------------------------------

# cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# This file with the error is errors.rb
# 2. What is the line number where the error occurs?
# The interpreter says line 170, but it's really saying it expected an end to some code that wasn't put in.
# 3. What is the type of error message?
# This is a syntax error.
# 4. What additional information does the interpreter provide about this type of error?
# It expected an end to input and specificaly the keyword end was missing somewhere.
# 5. Where is the error in the code?
# The interpreter says the error is occuring at the end of the comment section because it's looking for an end keyword.
# 6. Why did the interpreter give you this error?
# Within the cartman_hates method, the while rule needed an end keyword as well.

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
# Line number 36.
# 2. What is the type of error message?
# It's a main error message.
# 3. What additional information does the interpreter provide about this type of error?
# It's an undefined local variable or method.
# 4. Where is the error in the code?
# The error is that the name is not defined to anything.
# 5. Why did the interpreter give you this error?
# It gave me this error because it does not know what south_park is or what it represents. Usually it would store some sort of information or execute a method.

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
# Line 51
# 2. What is the type of error message?
# This is a main object error.
# 3. What additional information does the interpreter provide about this type of error?
# It is an undefined method.
# 4. Where is the error in the code?
# The error is how it's written. It's not defined, therefore it doesn't recognize it as a valid method.
# 5. Why did the interpreter give you this error?
# The interpreter gave me this error because cartman() is not defined as a method.

# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# The error occurs on line 66.
# 2. What is the type of error message?
# It says the error is in cartmans_phrase
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter lets us know that its the wrong number of arguments. If you look at the code, you'll see it accepts no arguments, yet when it's invoked, it contains one.
# 4. Where is the error in the code?
# The error is after cartmans_phrase and how no arguments are declared.
# 5. Why did the interpreter give you this error?
# The interpreter gave me this error because an argument is invoked on the method, but no argument is written in the method, therefore it shouldn't accept one.

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#  puts offensive_message
# end

# cartman_says

# 1. What is the line number where the error occurs?
# Line 85.
# 2. What is the type of error message?
# This is a wrong number of arguments error message.
# 3. What additional information does the interpreter provide about this type of error?
# An argument is written in the method, but not invoked when calling the method.
# 4. Where is the error in the code?
# The error in the code is when it is being invoked and no argument is being put next to it to utilize the method.
# 5. Why did the interpreter give you this error?
# The interpreter gave me this error because it's an argument error. The method has an argument, but none when called.



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#  puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# line 106.
# 2. What is the type of error message?
# It is an argument error message.
# 3. What additional information does the interpreter provide about this type of error?
# cartman_lie has the wrong number of arguments compared to when it is being called.
# 4. Where is the error in the code?
# the error is in the method and how many arguments it contains.
# 5. Why did the interpreter give you this error?
# The interpreter gave me this error because while the method contains two arguments, when it is invoked, it contains one.

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# Line 125.
# 2. What is the type of error message?
# This is a type error message.
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter says the string can't be coerced into Fixnum.
# 4. Where is the error in the code?
# The error is that the integer 5 can't mulitply a string.
# 5. Why did the interpreter give you this error?
# The interpreter gave me this error because you cannot multiply a string, unless it goes first in the sequence, which would just print it however many times.

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# Line 140.
# 2. What is the type of error message?
# This is a zerodivisionerror message.
# 3. What additional information does the interpreter provide about this type of error?
# The integer divided by 0 seems to be the error.
# 4. Where is the error in the code?
# The error is where it says 20/0
# 5. Why did the interpreter give you this error?
# The interpreter gave me this error because you can't divide an integer by 0.

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# Line 156.
# 2. What is the type of error message?
# This is a load error message.
# 3. What additional information does the interpreter provide about this type of error?
# It cannot load the file that it is trying to.
# 4. Where is the error in the code?
# The error is where it says the file it wants to load. That file doesn't exist.
# 5. Why did the interpreter give you this error?
# The interpreter gave me this error because it can't load a file that doesn't exist within the directory.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

=begin
Which error was the most difficult to read?

I think the first one was the most difficult just because the line that it said the error was on was so far away from the actual problem. It wasn't until I focused on the method and realized what it was telling me.

How did you figure out what the issue with the error was?

I kept reading the error message and looking at the example of code I knew the error was supposed to be for. Eventually I figured it out.

Were you able to determine why each error message happened based on the code?

Yes, I felt I was able to diagnose the issue's after getting more comfortable with the error messages.

When you encounter errors in your future code, what process will you follow to help you debug?

I will look at the line number, read what kind of error message it is, and any additional information it says.

=end