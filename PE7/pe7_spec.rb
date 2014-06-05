require "./pe7.rb"

describe "nth prime" do

  it "gets the sixth prime" do
    nth_prime(6).should == 13
  end

end