class RemoveDayFromService < ActiveRecord::Migration
  def change
    remove_column :services, :friday, :boolean
    remove_column :services, :thursday, :boolean
    remove_column :services, :wednesday, :boolean
    remove_column :services, :tuesday, :boolean
    remove_column :services, :monday, :boolean
    remove_column :services, :telephone, :string
  end
end
