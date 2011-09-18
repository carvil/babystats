class ChangeTypeOfAllPercentilesInHeightPercentiles < ActiveRecord::Migration
  def self.up
    change_column :height_percentiles, :p1, :float
    change_column :height_percentiles, :p3, :float
    change_column :height_percentiles, :p5, :float
    change_column :height_percentiles, :p15, :float
    change_column :height_percentiles, :p25, :float
    change_column :height_percentiles, :p50, :float
    change_column :height_percentiles, :p75, :float
    change_column :height_percentiles, :p85, :float
    change_column :height_percentiles, :p95, :float
    change_column :height_percentiles, :p97, :float
    change_column :height_percentiles, :p99, :float
    change_column :height_percentiles, :sample_sd, :float
    change_column :height_percentiles, :mean, :float
    change_column :height_percentiles, :standard_deviation, :float
  end

  def self.down
    change_column :height_percentiles, :p1, :decimal
    change_column :height_percentiles, :p3, :decimal
    change_column :height_percentiles, :p5, :decimal
    change_column :height_percentiles, :p15, :decimal
    change_column :height_percentiles, :p25, :decimal
    change_column :height_percentiles, :p50, :decimal
    change_column :height_percentiles, :p75, :decimal
    change_column :height_percentiles, :p85, :decimal
    change_column :height_percentiles, :p95, :decimal
    change_column :height_percentiles, :p97, :decimal
    change_column :height_percentiles, :p99, :decimal
    change_column :height_percentiles, :sample_sd, :decimal
    change_column :height_percentiles, :mean, :decimal
    change_column :height_percentiles, :standard_deviation, :decimal
  end
end
