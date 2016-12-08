class RemoveSundayFromService < ActiveRecord::Migration
  def change
    remove_column :services, :sunday, :boolean
    remove_column :services, :saturday, :boolean
  end
end
