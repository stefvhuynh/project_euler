module Fibonacci

  def self.by_number(number)
    seq = [1, 2]
    while seq.length < number
      seq << seq[seq.length - 2] + seq[seq.length - 1]
    end
    seq
  end
  
  def self.by_upper_limit(upper)
  end

end