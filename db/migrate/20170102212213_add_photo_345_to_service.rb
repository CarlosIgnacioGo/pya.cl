class AddPhoto345ToService < ActiveRecord::Migration
  def change
    add_column :services, :photo_3, :string
    add_column :services, :photo_4, :string
    add_column :services, :photo_5, :string
  end
end
