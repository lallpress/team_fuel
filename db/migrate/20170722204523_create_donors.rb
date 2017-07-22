class CreateDonors < ActiveRecord::Migration
  def change
    create_table :donors do |t|
      t.string :donorName
      t.string :phoneNum

      t.timestamps null: false
    end
  end
end
