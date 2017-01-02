class AddPhoto2ToService < ActiveRecord::Migration
  def change
    add_column :services, :photo_2, :string
  end
end
