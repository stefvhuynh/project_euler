require "./pe4.rb"

describe "largest palindrome of products method" do
  
  it "gets the largest palindrome of the product of 2-digit numbers" do
    largest_palindrome(2).should == 9009
  end

end