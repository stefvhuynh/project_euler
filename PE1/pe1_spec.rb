require "./pe1.rb"

describe SumOfMultiples do
  before(:each) { @sum_of_multiples = SumOfMultiples.new(15) }
  
  describe "gets multiples for one number" do
    it "generates multiples of 3" do
      @sum_of_multiples.multiples_of(3).should == [3, 6, 9, 12]
    end
    it "generates multiples of 5" do
      @sum_of_multiples.multiples_of(5).should == [5, 10]
    end
  end
  
  describe "gets unique multiples for many numbers" do
    it "generates unique multiples of 3 and 5" do
      @sum_of_multiples.multiples_of(3, 5).should == [3, 5, 6, 9, 10, 12]
    end
    it "generates unique multiples of 2, 3, and 5" do
      @sum_of_multiples.multiples_of(2, 3, 5).should == [2, 3, 4, 5, 6, 8, 9, 10, 12, 14]
    end
  end
  
  describe "sums all the multiples" do
    it "sums the multiples of 3 and 5" do
      @sum_of_multiples.multiples_of(3, 5)
      @sum_of_multiples.sum.should == 45
    end
  end
  
end