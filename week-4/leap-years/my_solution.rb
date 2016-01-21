
# Leap Years

# I worked on this challenge [with: Michael Wang].


# Your Solution Below
def leap_year?(year)
  if year % 4 == 0
    if year % 100 ==0
      if year % 400 ==0
        return true
      end
      return false
    end
    return true
  end
  return false
end