class AddPhotoToBabies < ActiveRecord::Migration
  def change
    change_table :babies do |t|
      t.has_attached_file :photo
    end
  end
end
