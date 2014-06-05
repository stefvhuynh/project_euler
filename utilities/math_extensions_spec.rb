require "./math_extensions.rb"

describe Math do

  describe "decompose function" do
    it "decomposes a number into it's prime factors" do
      Math.decompose(24).should == [2, 2, 2, 3]
      Math.decompose(100).should == [2, 2, 5, 5] 
    end
  end
  
  describe "palindrome? function" do
    it "determines if a number is a palindrome" do
      Math.palindrome?(10001).should == true
      Math.palindrome?(1111).should == true
      Math.palindrome?(123).should == false
    end
  end
  
  describe "generating primes functions" do
    describe "gets primes by upper limit" do
      it "gets all primes up to 20" do
        Math.primes_by_upper(20).should == [2, 3, 5, 7, 11, 13, 17, 19]
      end
    end
    
    describe "gets primes by number of primes wanted" do
      it "gets the first five primes" do
        Math.primes_by_number(5).should == [2, 3, 5, 7, 11]
      end
    end
  end

end


