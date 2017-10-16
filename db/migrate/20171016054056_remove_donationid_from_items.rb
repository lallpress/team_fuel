class RemoveDonationidFromItems < ActiveRecord::Migration
  def change
    remove_column :items, :donationID, :integer
  end
end
