class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.string :itemName
      t.text :text
      t.number :quantity
      t.text :text
      t.date/time :expDate
      t.text :text
      t.string :category
      t.text :text
      t.string :organization
      t.text :text

      t.timestamps null: false
    end
  end
end
