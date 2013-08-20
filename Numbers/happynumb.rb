# Happy numbers are positive integers that follow a particular formula: 
# take each individual digit, square it, and then sum the squares to get a new number. 
# Repeat with the new number and eventually, you might get to a number whose squared 
# sum is 1. This is a happy number. An unhappy number (or sad number) is one that 
# loops endlessly. Write a function that determines if a number is happy or not. 


def happy_number?(a)
  10.times do 
    a = a.to_s.chars.map { |x| x.to_i ** 2}.inject(:+)
    return true if a == 1
  end
  false
end 
