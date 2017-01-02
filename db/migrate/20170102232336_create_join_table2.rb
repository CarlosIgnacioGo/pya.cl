class CreateJoinTable2 < ActiveRecord::Migration
  def change
    create_join_table :services, :additionals do |t|
      # t.index [:service_id, :additional_id]
      # t.index [:additional_id, :service_id]
    end
  end
end
