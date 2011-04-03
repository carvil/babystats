require File.dirname(__FILE__)+'/../spec_helper'

describe User do

  before (:each) do
    @user = Factory.create(:user)
  end

  it "should save a user when all attributes are given" do
    @user.save
    @user.valid?.should be_true
  end

  [:name, :email, :username, :password].each do |attr|
    it "should fail when #{attr.to_s} is not given" do
      user = User.new(valid_user_attributes.reject{|key,value| key == attr})
      user.valid?.should be_false
    end
  end

  [:country, :city].each do |attr|
    it "should not fail when #{attr.to_s} is not given" do
      user = User.new(valid_user_attributes.reject{|key,value| key == attr})
      user.valid?.should be_true
    end
  end

  def valid_user_attributes(opts = {})
    valid_attributes = {
      :name => @user.name,
      :email => @user.email,
      :username => @user.username,
      #:password => @user.password,
      #:country => @user.country,
      #:city => @user.city
    }.merge(opts)
    return valid_attributes
  end

end
