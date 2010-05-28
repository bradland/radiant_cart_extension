require File.dirname(__FILE__) + '/../spec_helper'

describe Cart do
  before(:each) do
    @cart = Cart.new
  end

  it "should be valid" do
    @cart.should be_valid
  end
end
