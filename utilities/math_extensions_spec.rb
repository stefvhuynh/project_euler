require "./math_extensions.rb"

describe Math do

  describe "decompose" do
    it "decomposes a number into it's prime factors" do
      Math.decompose(24).should == [2, 2, 2, 3]
      Math.decompose(100).should == [2, 2, 5, 5] 
    end
  end
  
  describe "palindrome?" do
    it "determines if a number is a palindrome" do
      Math.palindrome?(10001).should == true
      Math.palindrome?(1111).should == true
      Math.palindrome?(123).should == false
    end
  end
  
  describe "primes" do
    describe "primes_by_upper_limit" do
      it "gets all primes up to 20" do
        Math.primes_by_limits(20).should == [2, 3, 5, 7, 11, 13, 17, 19]
      end
      
      it "gets all primes between 3 and 20" do
        Math.primes_by_limits(3, 20).should == [3, 5, 7, 11, 13, 17, 19]
      end
    end
    
    describe "primes_by_number" do
      it "gets the first five primes" do
        Math.primes_by_number(5).should == [2, 3, 5, 7, 11]
      end
    end
  end
  
  describe "fibonacci" do
    it "gets the first 10 fibonacci numbers" do
      Math.fibonacci(10).should == [1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
    end
  end

end


