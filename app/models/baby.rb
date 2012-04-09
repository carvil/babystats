class Baby < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :name, :dob, :gender, :user_id

  attr_accessible :name, :dob, :gender, :photo

  has_attached_file :photo,
     :styles => {
       :thumb => "100x100#",
       :small  => "400x400>" }

end
