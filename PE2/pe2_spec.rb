require "./pe2.rb"

describe SumEvenFibonacci do
  before(:each) { @sum_even_fibonacci = SumEvenFibonacci.new(10) }

  it "gets the first ten numbers in the sequence" do
    @sum_even_fibonacci.sequence.should == [1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
  end
  
  it "sums only the even terms of the first ten numbers" do
    @sum_even_fibonacci.even_sum.should == 44
  end

end