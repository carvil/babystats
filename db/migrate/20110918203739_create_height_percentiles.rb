class CreateHeightPercentiles < ActiveRecord::Migration
  def self.up
    create_table :height_percentiles do |t|
      t.integer :week
      t.decimal :p1
      t.decimal :p3
      t.decimal :p5
      t.decimal :p15
      t.decimal :p25
      t.decimal :p50
      t.decimal :p75
      t.decimal :p85
      t.decimal :p95
      t.decimal :p97
      t.decimal :p99
      t.decimal :standard_deviation
      t.decimal :mean
      t.decimal :sample_sd

      t.timestamps
    end
  end

  def self.down
    drop_table :height_percentiles
  end
end
