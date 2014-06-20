=begin
PE #9
A Pythagorean triplet is a set of three natural numbers, a < b < c, 
for which, a^2 + b^2 = c^2
For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
=end

def pythagorean_triples(sum)
  triple = []
  
  (3..(sum / 2)).each do |a|
    
    ((a + 1)..(sum / 2)).each do |b|
      c_sq = (a ** 2) + (b ** 2)
      c = Math.sqrt(c_sq)
      
      if c % 1 == 0 && a + b + c == sum
        triple << a << b << c.to_i
        return triple
      end
      
    end
  end
  
  raise "no such triples exist"
end


