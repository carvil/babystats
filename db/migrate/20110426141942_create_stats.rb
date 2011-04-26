class CreateStats < ActiveRecord::Migration
  def self.up
    create_table :stats do |t|
      t.integer :user_id
      t.integer :baby_id
      t.float :height
      t.float :weight
      t.integer :age_weeks

      t.timestamps
    end
  end

  def self.down
    drop_table :stats
  end
end
