class RemoveExpDonationIdFromItems < ActiveRecord::Migration
  def change
    remove_column :items, :expiration, :date
    remove_column :items, :donationID, :integer
  end
end
