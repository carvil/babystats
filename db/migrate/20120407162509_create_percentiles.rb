class CreatePercentiles < ActiveRecord::Migration
  def change
    create_table :percentiles do |t|
      t.integer :day
      t.integer :percentile_indicator_id
      t.float :power_l
      t.float :mean_m
      t.float :variation_s
      t.float :percentile_01
      t.float :percentile_1
      t.float :percentile_3
      t.float :percentile_5
      t.float :percentile_10
      t.float :percentile_15
      t.float :percentile_25
      t.float :percentile_50
      t.float :percentile_75
      t.float :percentile_85
      t.float :percentile_90
      t.float :percentile_95
      t.float :percentile_97
      t.float :percentile_99
      t.float :percentile_999

      t.timestamps
    end
  end
end
