class Stat < ActiveRecord::Base

  validates_presence_of :user_id, :baby_id, :age_weeks, :height, :weight

  belongs_to :user
  belongs_to :baby

end
