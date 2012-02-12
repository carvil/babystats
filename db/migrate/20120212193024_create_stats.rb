class CreateStats < ActiveRecord::Migration
  def change
    create_table :stats do |t|
      t.integer :user_id
      t.integer :baby_id
      t.float :height_in_meters
      t.integer :age_months

      t.timestamps
    end
  end
end
