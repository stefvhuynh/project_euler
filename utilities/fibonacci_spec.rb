require "./fibonacci.rb"

describe Fibonacci do
  
  describe "gets fibonacci sequence by number of terms" do
    it "gets first ten fibonacci numbers" do
      Fibonacci.by_number(10).should == [1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
    end
  end
  
  describe "gets fibonacci sequence by upper limit" do
    it "gets the sequence up to 89"
  end

end