class AddColumnsToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :email, :string
    add_column :users, :username, :string
    add_column :users, :password, :string
    add_column :users, :country, :string
    add_column :users, :city, :string
  end

  def self.down
    remove_column :users, :city
    remove_column :users, :country
    remove_column :users, :password
    remove_column :users, :username
    remove_column :users, :email
  end
end
