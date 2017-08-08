class CreateFoodJoinTable < ActiveRecord::Migration
  def change
    create_join_table :inventories, :items do |t|
      # t.index [:inventory_id, :item_id]
      # t.index [:item_id, :inventory_id]
    end
    add_index :inventories_items, :organization_id
    add_index :inventories_items, :item_id
  end
end
