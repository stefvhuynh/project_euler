require "./pe9.rb"

describe "pythagorean_triples" do

  it "returns the set of triples that adds to 12" do
    pythagorean_triples(12).should == [3, 4, 5]
  end
  
  it "returns the set of triples that adds to 24" do
    pythagorean_triples(24).should == [6, 8, 10]
  end
  
  it "raises an error if there is no set that adds to a number" do
    expect { pythagorean_triples(11) }.to raise_error
  end

end


