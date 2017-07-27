require 'rails_helper'

RSpec.describe "inventories/new", type: :view do
  before(:each) do
    assign(:inventory, Inventory.new(
      :itemnum => 1,
      :orgnum => 1,
      :quantity => 1
    ))
  end

  it "renders new inventory form" do
    render

    assert_select "form[action=?][method=?]", inventories_path, "post" do

      assert_select "input#inventory_itemnum[name=?]", "inventory[itemnum]"

      assert_select "input#inventory_orgnum[name=?]", "inventory[orgnum]"

      assert_select "input#inventory_quantity[name=?]", "inventory[quantity]"
    end
  end
end
