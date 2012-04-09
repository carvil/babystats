class RemoveUserIdFromStats < ActiveRecord::Migration
  def change
    remove_column :stats, :user_id
  end
end
