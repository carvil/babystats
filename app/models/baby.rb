class Baby < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :name, :dob, :gender, :user_id

  attr_accessible :name, :dob, :gender
end
