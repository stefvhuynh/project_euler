require "./pe6.rb"

describe DiffOfSumOfSquares do
  before { @diff_of_sum = DiffOfSumOfSquares.new(10) }
  
  it "gets the sum of squares" do
    @diff_of_sum.sum_of_squares.should == 385
  end
  
  it "gets the square of the sum" do
    @diff_of_sum.square_of_sum.should == 3025
  end
  
  it "gets the difference of the two" do
    @diff_of_sum.difference.should == 2640
  end
  
end