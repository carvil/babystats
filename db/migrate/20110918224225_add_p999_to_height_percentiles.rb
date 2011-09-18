class AddP999ToHeightPercentiles < ActiveRecord::Migration
  def self.up
    add_column :height_percentiles, :p999, :float
  end

  def self.down
    remove_column :height_percentiles, :p999
  end
end
