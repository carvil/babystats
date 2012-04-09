class AddStandardDeviationToPercentiles < ActiveRecord::Migration
  def change
    add_column :percentiles, :standard_deviation_sd, :float
  end
end
