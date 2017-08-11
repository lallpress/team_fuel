require 'rails_helper'

RSpec.describe "inventories/edit", type: :view do
  before(:each) do
    @inventory = assign(:inventory, Inventory.create!(
      :itemnum => 1,
      :orgnum => 1,
      :quantity => 1,
      :expires => 1,
      :category => 1
    ))
  end

  it "renders the edit inventory form" do
    render

    assert_select "form[action=?][method=?]", inventory_path(@inventory), "post" do

      assert_select "input#inventory_itemnum[name=?]", "inventory[itemnum]"

      assert_select "input#inventory_orgnum[name=?]", "inventory[orgnum]"

      assert_select "input#inventory_quantity[name=?]", "inventory[quantity]"
    end
  end
end
