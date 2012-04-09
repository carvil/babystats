class AddMeasureUnitToPercentiles < ActiveRecord::Migration
  def change
    add_column :percentiles, :measure_unit, :string
  end
end
