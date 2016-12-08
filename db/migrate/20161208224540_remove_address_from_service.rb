class RemoveAddressFromService < ActiveRecord::Migration
  def change
    remove_column :services, :address, :string
  end
end
