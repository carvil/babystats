class FixWeekInHeightPercentiles < ActiveRecord::Migration
  def self.up
    rename_column :height_percentiles, :week, :month
  end

  def self.down
    rename_column :height_percentiles, :month, :week
  end
end
