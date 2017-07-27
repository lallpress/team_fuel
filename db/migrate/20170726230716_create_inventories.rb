class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.integer :itemnum
      t.integer :orgnum
      t.integer :quantity
      t.date :expires

      t.timestamps null: false
    end
  end
end
