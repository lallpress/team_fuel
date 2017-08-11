require 'rails_helper'

RSpec.describe "inventories/index", type: :view do
  before(:each) do
    assign(:inventories, [
      Inventory.create!(
        :itemnum => 1,
        :orgnum => 2,
        :quantity => 3,
        :expires => 4,
        :category => 5
      ),
      Inventory.create!(
        :itemnum => 1,
        :orgnum => 2,
        :quantity => 3,
        :expires => 4,
        :category => 5
      )
    ])
  end

  it "renders a list of inventories" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
