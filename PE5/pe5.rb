=begin
PE #5
2520 is the smallest number that can be divided by each of the numbers 
from 1 to 10 without any remainder.
What is the smallest positive number that is evenly divisible by all 
of the numbers from 1 to 20?
=end

require "../utilities/math_extensions.rb"

class DivisibleByAll
  attr_reader :number, :factors, :upper_limit
  
  def initialize(upper_limit)
    @upper_limit = upper_limit
    @factors = generate_factors(@upper_limit)
    @number = @factors.inject(1) { |prod, x| prod *= x }
  end
  
  private
  
  def generate_factors(upper_limit)
    result = []
  
    upper_limit.downto(2).each do |x|
      factors = Math.decompose(x)
      factors.each { |factor| result.delete_at(result.index(factor)) unless result.index(factor).nil? }
      result += factors
    end
    
    result.sort
  end
  
end


