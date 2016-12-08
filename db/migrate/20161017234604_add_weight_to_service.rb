class AddWeightToService < ActiveRecord::Migration
  def change
    add_column :services, :weight, :integer
  end
end
