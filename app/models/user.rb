class User < ActiveRecord::Base
  attr_accessor :password_confirmation
  validates_presence_of :name, :username, :password
  validates_uniqueness_of :username

  validates :email, :presence => true, :email => true
#  validates :country, :allow_nil => true
#  validates :password, :password => true
end
