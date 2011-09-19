class CreateBodyMassPercentiles < ActiveRecord::Migration
  def self.up
    create_table :body_mass_percentiles do |t|
      t.integer :month
      t.float :l
      t.float :mean
      t.float :sample_sd
      t.float :p01
      t.float :p1
      t.float :p3
      t.float :p5
      t.float :p10
      t.float :p15
      t.float :p25
      t.float :p50
      t.float :p75
      t.float :p85
      t.float :p90
      t.float :p95
      t.float :p97
      t.float :p99
      t.float :p999
      t.string :gender
      t.string :measure_unit

      t.timestamps
    end
  end

  def self.down
    drop_table :body_mass_percentiles
  end
end
