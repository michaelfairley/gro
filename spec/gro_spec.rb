require "gro"

describe Gro do
  it "works" do
    chan = Channel.new

    go {
      chan << "hello"
      chan << "world"
    }

    val = ~chan
    val.should == "hello"
    (~chan).should == "world"
  end
end
