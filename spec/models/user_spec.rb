require File.dirname(__FILE__)+'/../spec_helper'

describe User do

  before (:each) do
    @user = Factory.create(:user)
  end

  after(:each) do
    User.delete_all
  end

  it "should save a user when all attributes are given" do
    @user.valid?.should be_true
  end

  [:name, :email, :username, :password, :country, :city].each do |attr|
    it "should fail when #{attr.to_s} is not given" do
      user = User.new(valid_user_attributes.reject{|key,value| key == attr})
      user.valid?.should be_false
    end
  end

  [:name, :email, :username, :password].each do |attr|
    it "should fail when #{attr.to_s} is null" do
      user = User.new(valid_user_attributes({ attr => nil}))
      user.valid?.should be_false
    end
  end

  it "should save the user with minimalist information" do
    user = User.new(valid_user_attributes({:country => nil, :city => nil}))
    user.save
  end

  it "should save the user with valid input" do
    user = User.new(valid_user_attributes({:username => 'adrianaTest'}))
    user.password_confirmation = @user.password_confirmation
    user.save
    user.valid?.should be_true
    user2 = User.new(valid_user_attributes({:username => 'adrianaTest'}))
    user2.password_confirmation = @user.password_confirmation
    user2.save
    user2.valid?.should be_false
  end

  it "should fail if the email has a wrong format" do
    user = User.create(valid_user_attributes({:email => 'wrong_email.com'}))
    user.valid?.should be_false
  end

  it "should fail if the password confirmation is different from the password" do
    user = User.new(valid_user_attributes)
    user.password_confirmation = "different_pass"
    user.valid?.should be_false
  end

  it "should fail if the password contains the username" do
    user = User.new(valid_user_attributes({:password => @user.name}))
    user.password_confirmation = @user.name
    user.valid?.should be_false
  end

  it "should fail if the password contains the username" do
    user = User.new(valid_user_attributes({:password => @user.username}))
    user.password_confirmation = @user.username
    user.valid?.should be_false
  end

  it "should fail if the password contains the username" do
    user = User.new(valid_user_attributes({:password => @user.email}))
    user.password_confirmation = @user.email
    user.valid?.should be_false
  end

  def valid_user_attributes(opts = {})
    valid_attributes = {
      :name => @user.name,
      :email => @user.email,
      :username => @user.username,
      :password => @user.password,
      :country => @user.country,
      :city => @user.city
    }.merge(opts)
    return valid_attributes
  end

end
