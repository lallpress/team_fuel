class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.string :itemName
      t.text :text
      t.integer :quantity
      t.text :text
      t.datetime :expDate
      t.text :text
      t.string :category
      t.text :text
      t.string :organization
      t.text :text

      t.timestamps null: false
    end
  end
end
