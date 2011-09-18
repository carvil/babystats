class AddGenderToHeightPercentiles < ActiveRecord::Migration
  def self.up
    add_column :height_percentiles, :gender, :string
  end

  def self.down
    remove_column :height_percentiles, :gender
  end
end
