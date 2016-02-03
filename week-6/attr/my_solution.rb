
#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData

  attr_reader :name

  def initialize
    @name = "David"
  end

end


class Greetings

  def initialize
    @name_data = NameData.new
  end

  def hello
    puts "Hello #{@name_data.name}! How wonderful to see you today."
  end

end

greet = Greetings.new
greet.hello


# Reflection

# RELEASE 1

  # What are these methods doing?

    # These methods are returning the age, name and occupation in the class.

  # How are they modifying or returning the value of instance variables?

    # They are established as instance variables and then modified in methods that can change the data inside these instance variables.

# RELEASE 2

  # What changed between the last release and this release?

    # An attr_reader was set to :age instance variable creating a method already for it, negating the need for a what_is_age method.

  # What was replaced?

    # what_is_age method was replaced with attr_reader equal to age instance variable making a method called .age

  # Is this code simpler than the last?

    # Yes, it now has less code written but does the same thing. That seems simpler to me!

# RELEASE 3

  # What changed between the last release and this release?

    # An attr_writer was set to @age so that the method to write a new age is replaced.

  # What was replaced?

    # The method to new_age was replaced with an attr_writer set to @age.

  # Is this code simpler than the last?

    # Yes, it allows you to view and change the age argument and requires two less methods written out.

# REFLECTION

# What is a reader method?

    # A reader method allows you to call it and only outputs the variables stored in it.

# What is a writer method?

  # A writer method allows you input or change the data inside the variable.

# What do the attr methods do for you?

  # attr methods let you read, write data or do both which are saved in a class.

# Should you always use an accessor to cover your bases? Why or why not?

  # No, this can cause issues and bugs in the program and sometimes you do not want to let other rewrite information in a class.

# What is confusing to you about these methods?

  # Nothing, it's straight forward.


