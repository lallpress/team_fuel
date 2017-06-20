class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.text :item
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
