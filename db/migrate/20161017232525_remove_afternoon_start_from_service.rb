class RemoveAfternoonStartFromService < ActiveRecord::Migration
  def change
    remove_column :services, :afternoon_start, :time
  end
end
