class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      #t.belongs_to :inventories, index: true
      t.string :category
      t.string :itemName
      t.date :expiration
      t.integer :donationID

      t.timestamps null: false
    end
  end
end
