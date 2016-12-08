class AddAgeToService < ActiveRecord::Migration
  def change
    add_column :services, :age, :integer
  end
end
