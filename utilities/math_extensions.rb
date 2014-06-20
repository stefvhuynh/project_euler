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
  
  # Uses Sieve of Eratosthenes
  def self.primes_by_limits(lower_limit = 2, upper_limit)
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
    primes.drop(lower_limit)
  end
  
  # Uses trial division; divides by primes that are already calculated
  def self.primes_by_number(number)
    primes = [2]
    i = 3
    
    while primes.length < number
      isprime = true
      
      primes.each do |prime|
        isprime = false if i % prime == 0
      end
      
      primes << i if isprime
      i += 2
    end
    
    primes
  end
  
  def self.fibonacci(number)
    seq = [1, 2]
    while seq.length < number
      seq << seq[seq.length - 2] + seq[seq.length - 1]
    end
    seq
  end
  
end


