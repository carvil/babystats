require 'spec_helper'

describe User do
  context "given a valid set of attributes" do
    it "should create the user" do
      user = FactoryGirl.build(:user)
      user.valid?.should be_true
      user.save.should be_true
    end
  end

  context "given invalid attributes" do
    it "should not create the user" do
      user = User.new
      user.valid?.should be_false
      user.save.should be_false
    end
  end
end
