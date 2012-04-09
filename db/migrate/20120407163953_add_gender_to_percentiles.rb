class AddGenderToPercentiles < ActiveRecord::Migration
  def change
    add_column :percentiles, :gender, :string
  end
end
