class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :address
      t.string :org_name
      t.string :phone
      t.string :contact_id

      t.timestamps null: false
    end
  end
end
