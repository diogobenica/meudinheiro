require 'spec_helper'

describe User do
  it "should have a valid factory" do
    FactoryGirl.build(:user).should be_valid
  end

  context "without required fields" do
    it "should not be valid without email" do
      FactoryGirl.build(:user, :email => "").should_not be_valid
    end
    it "should not be valid without name" do
      FactoryGirl.build(:user, :name => "").should_not be_valid
    end
  end
end
