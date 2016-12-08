class RemoveWebsiteFromService < ActiveRecord::Migration
  def change
    remove_column :services, :website, :string
  end
end
