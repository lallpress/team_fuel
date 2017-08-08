class AddIdToInventory < ActiveRecord::Migration
  def change
    add_column :inventories, :inventory_id, :integer
  end
end
