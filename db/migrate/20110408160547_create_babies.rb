class CreateBabies < ActiveRecord::Migration
  def self.up
    create_table :babies do |t|
      t.integer :user_id
      t.date :birthday
      t.string :gender
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :babies
  end
end
