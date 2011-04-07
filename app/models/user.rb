class User < ActiveRecord::Base

  attr_accessor :password_confirmation

  validates_presence_of :name, :username, :password_confirmation
  validates_uniqueness_of :username
  validates_confirmation_of :password

  validates :email, :presence => true, :email => true
  validates :password, :presence => true, :password => true

end
