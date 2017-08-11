require 'rails_helper'

RSpec.describe Inventory, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  it "is not valid without the category" do
  inventory = Inventory.new(category: nil)
  expect(inventory).to_not be_valid
  end
end
