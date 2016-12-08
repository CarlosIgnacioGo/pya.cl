class RemoveMorningStartFromService < ActiveRecord::Migration
  def change
    remove_column :services, :morning_start, :time
  end
end
