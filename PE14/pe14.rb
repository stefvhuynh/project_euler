=begin
PE #14
The following iterative sequence is defined for the set of positive 
integers:
n → n/2 (n is even)
n → 3n + 1 (n is odd)
Using the rule above and starting with 13, we generate the following 
sequence:
13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
It can be seen that this sequence (starting at 13 and finishing at 
1) contains 10 terms. Although it has not been proved yet (Collatz 
Problem), it is thought that all starting numbers finish at 1.
Which starting number, under one million, produces the longest chain?
NOTE: Once the chain starts the terms are allowed to go above one 
million.
=end

class Collatz
  @@seq_dict = { 2 => [2, 1] }
  
  def self.seq_dict
    @@seq_dict
  end
  
  def self.reset_seq_dict
    @@seq_dict = { 2 => [2, 1] }
  end
  
  def self.sequence(n)
    result = [n]
    
    if @@seq_dict[n]
      @@seq_dict[n]
    else
      if n.even?
        @@seq_dict[n] = result + sequence(n / 2)
      else
        @@seq_dict[n] = result + sequence(3 * n + 1)
      end
    end
  end
  
  def self.longest_sequence(upper_limit)
    longest = 0
    longest_n = 0
    
    (2..upper_limit).each do |n|
      seq_length = sequence(n).length
      
      if seq_length > longest
        longest = seq_length
        longest_n = n
      end
    end
    
    longest_n
  end
end

