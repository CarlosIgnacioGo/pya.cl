class RemoveMorningEndFromService < ActiveRecord::Migration
  def change
    remove_column :services, :morning_end, :time
  end
end
