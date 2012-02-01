class AddUserIdToBaby < ActiveRecord::Migration
  def change
    add_column :babies, :user_id, :integer
  end
end
