require File.dirname(__FILE__) + '/../spec_helper'

describe LineItem do
  before(:each) do
    @line_item = LineItem.new
  end

  it "should be valid" do
    @line_item.should be_valid
  end
end
