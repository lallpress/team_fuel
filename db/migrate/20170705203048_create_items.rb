class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :category
      t.string :itemName
      t.date :expiration
      t.integer :donationID

      t.timestamps null: false
    end
  end
end
