class RemoveTitleFromService < ActiveRecord::Migration
  def change
    remove_column :services, :title, :string
  end
end
