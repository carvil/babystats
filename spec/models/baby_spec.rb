require 'spec_helper'

describe Baby do

  let(:user) {
    FactoryGirl.create(:user)
  }

  let(:baby) {
    FactoryGirl.build(:baby)
  }

  context "given a valid set of attributes" do
    it "should create the baby" do
      user.babies << baby
      baby.valid?.should be_true
      baby.save.should be_true
    end
  end

  context "given invalid attributes" do
    it "should not create the baby" do
      another_baby = Baby.new
      user.babies << another_baby
      another_baby.valid?.should be_false
      another_baby.save.should be_false
    end
  end

  context "given no user" do
    it "should not create the Baby" do
      baby.valid?.should be_false
      baby.save.should be_false
    end
  end
end
