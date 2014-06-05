require "./pe5.rb"

describe DivisibleByAll do
  before { @divisible_by_all = DivisibleByAll.new(10) }
  
  # Every number in the range should be able to be created by a combination of the factors, but there should be no factor duplicates. For example, 4 is made up of 2 and 2, and 6 is made up of 3 and 2. We need an array [2, 2, 3], not [2, 2, 2, 3].
  it "gets all factors necessary to create each number between 1 and 10" do
    @divisible_by_all.factors.should == [2, 2, 2, 3, 3, 5, 7]
  end

  
  it "gets the number as multiplied by all the factors" do
    @divisible_by_all.number.should == 2520
  end
  
end