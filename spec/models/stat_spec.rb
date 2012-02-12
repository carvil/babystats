require 'spec_helper'

describe Stat do

  let(:user) {
    FactoryGirl.create(:user)
  }

  let(:baby) {
    FactoryGirl.build(:baby)
  }

  before :each do
    user.babies << baby
    user.save
  end

  context "given valid attributes" do
    it "should save the stats" do
      stats = FactoryGirl.build(:stat)
      stats.user = user
      stats.baby = baby
      stats.valid?.should be_true
      stats.save.should be_true
    end
  end

  context "given no user" do
    it "should not save the stats" do
      stats = FactoryGirl.build(:stat)
      stats.baby = baby
      stats.valid?.should be_false
      stats.save.should be_false
    end
  end

  context "given no baby" do
    it "should not save the stats" do
      stats = FactoryGirl.build(:stat)
      stats.user = user
      stats.valid?.should be_false
      stats.save.should be_false
    end
  end

  context "given no baby and no user" do
    it "should not save the stats" do
      stats = FactoryGirl.build(:stat)
      stats.valid?.should be_false
      stats.save.should be_false
    end
  end
end
