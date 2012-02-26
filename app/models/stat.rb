class Stat < ActiveRecord::Base
  belongs_to :baby

  validates_presence_of :baby_id
end
