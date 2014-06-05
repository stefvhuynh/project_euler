=begin
PE #6
The sum of the squares of the first ten natural numbers is,
1^2 + 2^2 + ... + 10^2 = 385
The square of the sum of the first ten natural numbers is,
(1 + 2 + ... + 10)^2 = 552 = 325
Hence the difference between the sum of the squares of the first ten 
natural numbers and the square of the sum is 325 − 385 = 2640.
Find the difference between the sum of the squares of the first one 
hundred natural numbers and the square of the sum.
=end

class DiffOfSumOfSquares
  attr_reader :sum_of_squares, :square_of_sum, :difference, :upper_limit
  
  def initialize(upper_limit)
    @upper_limit = upper_limit
    @sum_of_squares = (1..@upper_limit).inject(0) { |sum, x| sum += x ** 2 }
    @square_of_sum = (1..@upper_limit).inject(0) { |sum, x| sum += x } ** 2
    @difference = @square_of_sum - @sum_of_squares
  end
  
end