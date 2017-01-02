class CreateAdditionals < ActiveRecord::Migration
  def change
    create_table :additionals do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
