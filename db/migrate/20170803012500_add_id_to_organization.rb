class AddIdToOrganization < ActiveRecord::Migration
  def change
    add_column :organizations, :organization_id, :integer
  end
end
