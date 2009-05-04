require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Place do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :addres => "value for addres",
      :city => "value for city",
      :state => "value for state",
      :country => "value for country",
      :lat => 1.5,
      :lng => 1.5,
      :description => "value for description"
    }
  end

  it "should create a new instance given valid attributes" do
    Place.create!(@valid_attributes)
  end
end
