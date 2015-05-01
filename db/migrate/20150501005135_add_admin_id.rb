class AddAdminId < ActiveRecord::Migration
  def change
    add_column :guests, :admin_id, :integer
  end
end
