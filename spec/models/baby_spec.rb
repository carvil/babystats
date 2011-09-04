require 'spec_helper'

describe Baby do

  before(:each) do
    @user = FactoryGirl.create(:user)
    @baby = FactoryGirl.create(:baby)
  end

  after(:each) do
    User.delete_all
    Baby.delete_all
  end

  it "should save a baby when all attributes are given" do
    @baby.valid?.should be_true
  end

  [:user_id, :name, :gender, :birthday].each do |field|
    it "should not save a baby if #{field.to_s} is missing" do
      baby = Baby.new(valid_baby_attributes.reject{|key,value| key == field})
      baby.valid?.should_not be_true
    end
  end

  [:user_id, :name, :birthday].each do |field|
    it "should not save a baby if #{field.to_s} is null" do
      baby = Baby.new(valid_baby_attributes({field => nil}))
      baby.valid?.should_not be_true
    end
  end

  it "should not save a baby with a wrong gender" do
    baby = Baby.new(valid_baby_attributes({ :gender => "whathever" }))
    baby.valid?.should be_false
  end

  it "should save two babies connected to the same user" do
    baby1 = Baby.new(valid_baby_attributes)
    baby2 = Baby.new(valid_baby_attributes)
    baby1.save
    baby2.save
    baby2.valid?.should be_true
  end

  def valid_baby_attributes(opts = {})
    valid_attributes = {
      :user_id => @user.id,
      :gender => "male",
      :name => "Sebastiao",
      :birthday => "2010-06-01"
    }.merge(opts)
    return valid_attributes
  end

end
