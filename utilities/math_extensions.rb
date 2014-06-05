module Math
  
  def self.decompose(n)
    
    prime_factors = lambda do |x|
      factor = (2..x).find { |a| x % a == 0 }
      return [] if factor.nil?
      [factor] + prime_factors.call(x / factor)
    end
    
    prime_factors.call(n).sort
  end
  
  def self.palindrome?(n)
    n.to_s == n.to_s.reverse
  end
  
  def self.primes_by_upper(upper_limit)
    bools = []
    primes = []
    (0..upper_limit).each { |x| bools[x] = true }
  
    i = 2
    while i < upper_limit + 1
      if bools[i] == true
        j = i ** 2
        while j < upper_limit + 1
          bools[j] = false
          j += i
        end
      end
      i += 1
    end
  
    bools.each_with_index { |x, i| primes << i if x == true }
    primes.drop(2)
  end
  
  def self.primes_by_number(number)
  end
  
end


