require 'spec_helper'

describe Transaction do
  it "should have a valid factory" do
    FactoryGirl.build(:transaction).should be_valid
  end

  context "without required fields" do
    it "should not be valid without description" do
      FactoryGirl.build(:transaction, :description => "").should_not be_valid
    end
    it "should not be valid without transaction_date" do
      FactoryGirl.build(:transaction, :transaction_date => "").should_not be_valid
    end
    it "should not be valid without user" do
      FactoryGirl.build(:transaction, :user => nil).should_not be_valid
    end
  end
end
