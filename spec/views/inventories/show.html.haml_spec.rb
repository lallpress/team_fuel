require 'rails_helper'

RSpec.describe "inventories/show", type: :view do
  before(:each) do
    @inventory = assign(:inventory, Inventory.create!(
      :itemnum => 1,
      :orgnum => 2,
      :quantity => 3,
      :expires => 4,
      :category => 5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
