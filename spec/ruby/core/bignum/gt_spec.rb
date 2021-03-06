require File.expand_path('../../../spec_helper', __FILE__)

describe "Bignum#>" do
  before(:each) do
    @bignum = bignum_value(732)
  end

  it "returns true if self is greater than the given argument" do
    (@bignum > (@bignum - 1)).should == true
    (@bignum > 14.6).should == true
    (@bignum > 10).should == true

    (@bignum > (@bignum + 500)).should == false
  end

  it "raises an ArgumentError when given a non-Integer" do
    lambda { @bignum > "4" }.should raise_error(ArgumentError)
    lambda { @bignum > mock('str') }.should raise_error(ArgumentError)
  end
end
