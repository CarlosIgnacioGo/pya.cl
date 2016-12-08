class AddHairRemovalToService < ActiveRecord::Migration
  def change
    add_column :services, :hair_removal, :string
  end
end
