=begin
If we list all the natural numbers below 10 that are multiples of 3 or 
5, we get 3, 5, 6 and 9. The sum of these multiples is 23. 
Find the sum of all the multiples of 3 or 5 below 1000.
=end

class SumOfMultiples
  attr_accessor :multiples, :upper_limit
  
  def initialize(upper_limit)
    @upper_limit = upper_limit
    @multiples = []
  end
  
  def multiples_of(*args)
    result = []
    args.each do |n|
      (1..(@upper_limit - 1) / n).each { |x| result << x * n }
    end
    @multiples = result.sort.uniq
  end
  
  def sum
    @multiples.inject(0) { |sum, x| sum += x }
  end
  
end


