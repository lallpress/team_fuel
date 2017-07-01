class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.string :item
      t.integer :quantity

      t.timestamps null: false
    end
  end
  
  def up
    create_table :donations do |t|
      t.string :item
      t.integer :quantity
      
      t.timestamps null: false
    end
  end
    
  def down
    drop_table :donations
  end
end