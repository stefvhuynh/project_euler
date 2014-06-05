require "./pe3.rb"

describe "largest prime factor method" do

  it "returns the largest prime factor of a given number" do
    largest_prime_factor(13195).should == 29
  end

end