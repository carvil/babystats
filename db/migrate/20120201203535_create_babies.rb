class CreateBabies < ActiveRecord::Migration
  def change
    create_table :babies do |t|
      t.string :name
      t.date :dob
      t.string :gender

      t.timestamps
    end
  end
end
