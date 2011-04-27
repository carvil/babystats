class RemoveUsernameForUsers < ActiveRecord::Migration
  def self.up
    remove_column :users, :username
  end

  def self.down
    add_column :users, :username
  end
end
