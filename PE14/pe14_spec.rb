require "./pe14.rb"
require "../utilities/performance.rb"

describe Collatz do
  before(:each) { Collatz.reset_seq_dict }

  describe "Collatz.sequence" do
    it "generates the sequence for n = 13" do
      Collatz.sequence(13).should == [13, 40, 20, 10, 5, 16, 8, 4, 2, 1]
    end
    
    it "saves all sequences in seq_dict (memoization)" do
      Collatz.sequence(13)
      Collatz.seq_dict.should == { 
        2 => [2, 1], 4 => [4, 2, 1], 8 => [8, 4, 2, 1], 
        16 => [16, 8, 4, 2, 1], 5 => [5, 16, 8, 4, 2, 1],
        10 => [10, 5, 16, 8, 4, 2, 1], 20 => [20, 10, 5, 16, 8, 4, 2, 1],
        40 => [40, 20, 10, 5, 16, 8, 4, 2, 1],
        13 => [13, 40, 20, 10, 5, 16, 8, 4, 2, 1]
       }
    end    
  end
  
  # Collatz.sequence should retrieve the sequence from seq_dict after 
  # it's already been generated once (memoization); there should be 
  # marked improvement in performance
  describe "performance" do    
    it "takes less time to get the sequence after generating it" do      
      gen_time = measure { Collatz.sequence(999_999) }
      lookup_time = measure { Collatz.sequence(999_999) }
      
      gen_time.should > lookup_time
    end
  end
  
  describe "longest_sequence" do    
    it "gives the first number of the longest sequence under a limit" do
      Collatz.longest_sequence(13).should == 9
    end
  end

end


