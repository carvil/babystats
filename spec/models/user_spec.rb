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

  [:name, :email, :password_hash, :password_salt, :country, :city].each do |attr|
    it "should fail when #{attr.to_s} is not given" do
      attrs = valid_user_attributes.reject{|key,value| key == attr}
      user = User.new(attrs)
      user.valid?.should be_false
    end
  end

  [:name, :email, :password_hash, :password_salt].each do |attr|
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
    user = User.create(valid_user_attributes({:email => "a@gmail.com"}))
    user.password_confirmation = @user.password_confirmation
    user.name = "Adriana"
    user.save
    user.valid?.should be_true
    user2 = User.create(valid_user_attributes({:email => "a@gmail.com"}))
    user2.password_confirmation = @user.password_confirmation
    user2.name = "Adriana"
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
    user = User.new(valid_user_attributes({:password => @user.email}))
    user.password_confirmation = @user.email
    user.valid?.should be_false
  end

  it "should validate the user's password against the password hash and salt" do
    @user.password_hash == BCrypt::Engine.hash_secret(@user.password, @user.password_salt)
  end

  it "should authenticate" do
    user = User.authenticate(@user.email, @user.password)
    user.nil?.should be_false
  end

  it "should not authenticate" do
    user = User.authenticate(@user.email, "some_other_password")
    user.nil?.should be_true
  end

  def valid_user_attributes(opts = {})
    valid_attributes = {
      :name => @user.name,
      :email => @user.email,
      :password_hash => @user.password_hash,
      :password_salt => @user.password_salt,
      :country => @user.country,
      :city => @user.city,
      :password => @user.password,
      :password_confirmation => @user.password_confirmation
    }.merge(opts)
    return valid_attributes
  end

end
