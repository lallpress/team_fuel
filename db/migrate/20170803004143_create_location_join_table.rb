class CreateLocationJoinTable < ActiveRecord::Migration
  def change
    create_join_table :inventories, :organizations do |t|
      # t.index [:inventory_id, :organization_id]
      # t.index [:organization_id, :inventory_id]
    end
    add_index :inventories_organizations, :inventory_id
    add_index :inventories_organizations, :organization_id
  end
end
