class RemoveAfternoonEndFromService < ActiveRecord::Migration
  def change
    remove_column :services, :afternoon_end, :time
  end
end
