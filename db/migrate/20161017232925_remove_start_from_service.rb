class RemoveStartFromService < ActiveRecord::Migration
  def change
    remove_column :services, :start, :time
  end
end
