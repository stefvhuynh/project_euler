require "./performance.rb"

describe "performance monitor" do
  
  it "takes 0 seconds to run an empty block" do
    time = measure { }
    time.should be_within(0.1).of(0)
  end
  
  it "takes 1 second to run a block that sleeps for 1 second" do
    def sleeper
      sleep 1
    end
    
    time = measure { sleeper }
    time.should be_within(0.1).of(1)
  end
  
end