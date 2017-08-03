class SampleNameChangeColumnType < ActiveRecord::Migration
  def change
    change_column(:inventories, :orgnum, :string)
  end
end
