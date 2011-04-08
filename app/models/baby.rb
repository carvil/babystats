class Baby < ActiveRecord::Base

  validates_presence_of :user_id, :name, :birthday

  belongs_to :user

end
