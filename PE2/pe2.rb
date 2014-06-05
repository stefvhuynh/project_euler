=begin
PE #2
Each new term in the Fibonacci sequence is generated by adding the 
previous two terms. By starting with 1 and 2, the first 10 terms will 
be: 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
By considering the terms in the Fibonacci sequence whose values do not 
exceed four million, find the sum of the even-valued terms.
=end

require "../utilities/fibonacci.rb"

class SumEvenFibonacci
  attr_accessor :sequence, :upper_limit
  
  def initialize(upper_limit)
    @upper_limit = upper_limit
    @sequence = Fibonacci.by_number(@upper_limit)
  end
  
  def even_sum
    sum = 0
    @sequence.each { |x| sum += x if x.even? }
    sum
  end
end

