class CreatePercentileIndicators < ActiveRecord::Migration
  def change
    create_table :percentile_indicators do |t|
      t.string :name

      t.timestamps
    end
  end
end
