class AddSmokingToService < ActiveRecord::Migration
  def change
    add_column :services, :smoking, :string
  end
end
