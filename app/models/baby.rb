class Baby < ActiveRecord::Base

  validates_presence_of :user_id, :name, :birthday

  validates_inclusion_of :gender, :in => %w( male female ), :message => "invalid gender"

  belongs_to :user

end
