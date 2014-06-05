=begin
PE #4
A palindromic number reads the same both ways. The largest palindrome 
made from the product of two 2-digit numbers is 9009 = 91 × 99.
Find the largest palindrome made from the product of two 3-digit 
numbers.
=end

require "../utilities/math_extensions.rb"
  
def largest_palindrome(digits)
  
  max = 0
  start = ""
  digits.times { start += "9" }
  start = start.to_i
  
  # Does not actually get all palindromes via find method
  start.downto((start / 10.0).ceil).each do |x|
    x2 = start.downto((start / 10.0).ceil).find { |y| Math.palindrome?(x * y) }
    max = x * x2 if !x2.nil? && x * x2 > max
  end
  
  max
end
  
  


