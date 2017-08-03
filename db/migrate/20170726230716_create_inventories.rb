class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.integer :itemnum
      t.string :orgnum
      t.integer :quantity
      t.date :expires
      t.string :category

      t.timestamps null: false
    end
  end
end
