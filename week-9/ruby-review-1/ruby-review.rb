# OO Basics: Student


# I worked on this challenge [with: Norberto Caceres].
# This challenge took me [2.5] hours.


# Pseudocode

# create empty array called students
# push 5 new instances of the Student class with name and an array of 5 scores per name
# define average method. make an instance variable for average and set the average of the scores for each object
  # use inject enumerable method on scores instance variable.
  # divide by length of @scores array (.length or .size)
  # return @average
# define a letter grade method
  # use IF ELSE statements: average >= 90 is A, >= 80 is B, >= 70 is C, >= 60 is D, < 60 is F
# end class
# define linear_search method
  # iterate through students array
  # IF the first name matches the name given return INDEX
  # if it's not in the array return -1
# define binary_search method
  # find middle point
  # if thats what we're looking for, return index
  # if not: create two separate arrays with data around middle point
  # search through each array do same process


# Initial Solution

class Student
  attr_accessor :scores, :first_name

  def initialize(first_name, scores)
    @first_name = first_name
    @scores = scores
  end

  def average
    @average = @scores.inject(0) { |sum, e| sum + e } / @scores.size
    return @average
  end

  def letter_grade
    if @average >= 90
      return "A"
    elsif @average >= 80
      return "B"
    elsif @average >= 70
      return "C"
    elsif @average >= 60
      return "D"
    elsif @average < 60
      return "F"
    end
  end

  #Write a linear_search method that searches the student array for a student's first_name and returns the position of that student if they are in the array. If the student is not in the array then the method should return -1.
end

def linear_search(students, name)
  students.each_with_index do |student, index|
    if student.first_name == name
      return index
    end
  end
  return -1
end

def binary_search(students, name, min, max)
  while min <= max
    if students[min].first_name == name
      return min
    else
      min += 1
    end
  end
  return -1
end

# def binary_search(students, name, l, r)
#   mid = (l + r)/2
#   return -1 if r < l
#   return binary_search(students, name, l, mid-1) if (students[mid] > name)
#   return binary_search(students, name, mid+1, r) if (students[mid] < name)
#   return mid if (students[mid] == name)
# end

students = []

students.push (Student.new("Alex", [100, 100, 100, 0, 100]))
students.push (Student.new("Norberto", [70, 80, 100, 0, 100]))
students.push (Student.new("David", [80, 85, 95, 70, 100]))
students.push (Student.new("Pamela", [60, 100, 100, 0, 100]))
students.push (Student.new("John", [100, 25, 100, 0, 100]))


# Refactored Solution

# DRIVER TESTS GO BELOW THIS LINE
# Initial Tests:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Additional Tests 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Additional Tests 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1

# Reflection

=begin

What concepts did you review in this challenge?

  A: in this challenge I reviewed how to make a new instance of an object, iteration through arrays, and what linear and binary search are.

What is still confusing to you about Ruby?

  A: I think I just need to keep practicing understanding scope and iteration. Those are the two things that are standing out that seem to be making me feel like I'm not moving forward.

What are you going to study to get more prepared for Phase 1?

  A: Ruby fundamentals with syntax and ways to iterate through arrays and hashes, making classes and working with new instances of them, and my pseudocode!

=end

