class AddCountryToService < ActiveRecord::Migration
  def change
    add_column :services, :country, :string
  end
end
