# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [1] hours on this challenge.


# Release 0: Pseudocode
  # in call method create instance variables for letter and number
    # letter is equal to an array of individual strings spelling out B I N G O
      # sample method to generate random letter
    # number is equal to a number 1-100 using rand
    # print letter and number convert to string

  # check method
    # iterate each column
      # if and elsif
    # use index numbers for array and sub-array
    # print board


# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here

# Check the called column for the number called.
  #fill in the outline here

# If the number is in the column, replace with an 'x'
  #fill in the outline here

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    @letter = ["B", "I", "N", "G", "O"].sample
    @number = rand(1...100)
    p @letter.to_s + @number.to_s
  end

  def check
    if @letter == "B"
      if @number == @bingo_board[0][0]
        @bingo_board[0][0] = "X"
      elsif @number == @bingo_board[1][0]
        @bingo_board[1][0] = "X"
      elsif @number == @bingo_board[2][0]
        @bingo_board[2][0] = "X"
      elsif @number == @bingo_board[3][0]
        @bingo_board[3][0] = "X"
      elsif @number == @bingo_board[4][0]
        @bingo_board[4][0] = "X"
      end
    elsif @letter == "I"
      if @number == @bingo_board[0][1]
        @bingo_board[0][1] = "X"
      elsif @number == @bingo_board[1][1]
        @bingo_board[1][1] = "X"
      elsif @number == @bingo_board[2][1]
        @bingo_board[2][1] = "X"
      elsif @number == @bingo_board[3][1]
        @bingo_board[3][1] = "X"
      elsif @number == @bingo_board[4][1]
        @bingo_board[4][1] = "X"
      end
    elsif @letter == "N"
      if @number == @bingo_board[0][2]
        @bingo_board[0][2] = "X"
      elsif @number == @bingo_board[1][2]
        @bingo_board[1][2] = "X"
      elsif @number == @bingo_board[2][2]
        @bingo_board[2][2] = "X"
      elsif @number == @bingo_board[3][2]
        @bingo_board[3][2] = "X"
      elsif @number == @bingo_board[4][2]
        @bingo_board[4][2] = "X"
      end
    elsif @letter == "G"
      if @number == @bingo_board[0][3]
        @bingo_board[0][3] = "X"
      elsif @number == @bingo_board[1][3]
        @bingo_board[1][3] = "X"
      elsif @number == @bingo_board[2][3]
        @bingo_board[2][3] = "X"
      elsif @number == @bingo_board[3][3]
        @bingo_board[3][3] = "X"
      elsif @number == @bingo_board[4][3]
        @bingo_board[4][3] = "X"
      end
    elsif @letter == "O"
      if @number == @bingo_board[0][4]
        @bingo_board[0][4] = "X"
      elsif @number == @bingo_board[1][4]
        @bingo_board[1][4] = "X"
      elsif @number == @bingo_board[2][4]
        @bingo_board[2][4] = "X"
      elsif @number == @bingo_board[3][4]
        @bingo_board[3][4] = "X"
      elsif @number == @bingo_board[4][4]
        @bingo_board[4][4] = "X"
      end
    end
    @bingo_board
  end

  def display
    @bingo_board.each do |row|
      p row
    end
  end

end


# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.call
new_game.check
new_game.display


#Reflection

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

  # It wasn't so difficult. I think my style is straight forward and it easily set up my thought process for the challenge.

# What are the benefits of using a class for this challenge?

  # It allows the methods in the class manipulate the board that is set. It sets instances of the object.

# How can you access coordinates in a nested array?

  # You use [][] the first is the main array and then the inside is for the sub array.

# What methods did you use to access and modify the array?

  # used .sample, rand, and then used an if elsif iteration to move through the array depending on the argument of a letter and number.

# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?

  # .sample was an interesting one. It just returns randomly from the array i provided.

# How did you determine what should be an instance variable versus a local variable?

  # whatever i thought would be used to create an instance of, i made an instance variable. Makes sense to think of it like that.

# What do you feel is most improved in your refactored solution?

  #