class DropTableInventories < ActiveRecord::Migration
  def change
    drop_table(:inventories, if_exists: true)
  end
end
