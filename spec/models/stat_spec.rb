require 'spec_helper'

describe Stat do

  before(:each) do
    @user = FactoryGirl.create(:user)
    @baby = FactoryGirl.create(:baby)
    @stat = FactoryGirl.create(:stat)
  end

  after(:each) do
    User.delete_all
    Baby.delete_all
    Stat.delete_all
  end

  it "should create valid stats when all attributes are given" do
    @stat.valid?.should be_true
  end

  [:user_id, :baby_id, :height, :weight, :age_weeks].each do |attr|
    it "should fail when #{attr.to_s} is not given" do
      stat = Stat.new(valid_stat_attributes.reject{|key,value| key == attr})
      stat.valid?.should be_false
    end
  end

  [:height, :weight].each do |attr|
    it "should allow integer values for #{attr.to_s}" do
      stat = Stat.new(valid_stat_attributes({attr => 20}))
      stat.valid?.should be_true
    end
  end

  it "should allow multiple stats for the same user and baby" do
    stat1 = Stat.new(valid_stat_attributes({:age_weeks => 1, :height => 1, :weight => 4}))
    stat2 = Stat.new(valid_stat_attributes({:age_weeks => 2, :height => 1.2, :weight => 4.5}))
    stat1.save
    stat2.save
    stat1.valid?.should be_true and stat2.valid?.should be_true

  end

  def valid_stat_attributes(opts = {})
    valid_attributes = {
      :user_id => @user.id,
      :baby_id => @baby.id,
      :age_weeks => @stat.age_weeks,
      :height => @stat.height,
      :weight => @stat.weight
    }.merge(opts)
    return valid_attributes
  end


end
