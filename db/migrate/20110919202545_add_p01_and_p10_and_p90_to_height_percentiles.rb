class AddP01AndP10AndP90ToHeightPercentiles < ActiveRecord::Migration
  def self.up
    add_column :height_percentiles, :p01, :float
    add_column :height_percentiles, :p10, :float
    add_column :height_percentiles, :p90, :float
  end

  def self.down
    remove_column :height_percentiles, :p90
    remove_column :height_percentiles, :p10
    remove_column :height_percentiles, :p01
  end
end
