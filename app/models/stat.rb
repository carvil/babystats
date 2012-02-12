class Stat < ActiveRecord::Base
  belongs_to :user
  belongs_to :baby

  validates_presence_of :user_id, :baby_id
end
