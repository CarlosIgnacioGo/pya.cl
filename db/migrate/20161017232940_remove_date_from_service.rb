class RemoveDateFromService < ActiveRecord::Migration
  def change
    remove_column :services, :date, :time
  end
end
