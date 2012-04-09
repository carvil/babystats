class ChangeDayToMonthToPercentiles < ActiveRecord::Migration
  def change
    rename_column :percentiles, :day, :month
  end
end
