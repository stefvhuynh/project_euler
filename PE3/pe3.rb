=begin
PE #3
The prime factors of 13195 are 5, 7, 13 and 29.
What is the largest prime factor of the number 60851475143?
=end

require "../utilities/math_extensions.rb"

def largest_prime_factor(n)
  Math.decompose(n).max
end