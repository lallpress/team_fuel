Given /the following items exist/ do |items_table|
  items_table.hashes.each do |item|
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that movie to the database here.
    
   
     Item.create!(item)
   
  end
  #fail "Unimplemented"
end

Then /^the category of "(.*)" should be "(.*)"/ do |item_value, category_value|
  item = Item.find_by_item(item_value)
  expect(item.category).to eq category_value
end