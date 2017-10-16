class CreateJoinTableItemInventory < ActiveRecord::Migration
  def change
    create_join_table :items, :inventories do |t|
       t.index [:item_id, :inventory_id]
       t.index [:inventory_id, :item_id]
    end
  end
end
