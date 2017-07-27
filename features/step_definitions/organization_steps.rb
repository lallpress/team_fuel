# # Add a declarative step here for populating the DB with movies.

# Given /I am on the Fuel Donation Management System home page/ do 
#   #fail "Unimplemented"
# end

# Then /I expect to be directed to the Current Organizations/ do
# end

# Given /I am on the Organizations page/ do |organization_table|
#   organization_table.hashes.each do |organization|
#     # each returned element will be a hash whose key is the table header.
#     # you should arrange to add that movie to the database here.
#      Organizations.create(organization)
   
#   end
#   #fail "Unimplemented"
# end
# When /^I follow 'Organizations'$/ do
  
# end

# Then /I expect to be directed to the Current Organizations page$/ do
 
# end

# Given /I am on the Current Organizations page/ do 
# end

# When(/^I follow 'New Organization'$/) do
# end

# And /I fill in "Organization" with "UNO"/ do
# end

# And /I fill in "Address" with "6700 Dodge Street"/ do
# end

# And /I fill in "Phone" with "402-554-2100"/ do
# end

# And /I fill in "Contact" with "Huong"/ do
# end

# And /^I select "Create Organization" from "Current Organizations"$/ do 
# end

# Then /^I should see the updated organizations displayed/ do 
# end

# Then /^I should see \/([^\/]*)\/$/ do |regexp|
#   regexp = Regexp.new(regexp)

#   if page.respond_to? :should
#     page.should have_xpath('//*', :text => regexp)
#   else
#     assert page.has_xpath?('//*', :text => regexp)
#   end
# end

#  Given /I am on the Donors page/ do 
# end

# When /I follow "XYZ Corp"/ do
# end

# Then /I should be on the edit donor page/ do
# end

# Given /I am on the edit form for "XYZ Corp"/ do
# end

# And /I fill in "Phone" with "555-987-1234"/ do
# end

# Then /^the phone number for "XYZ Corp" should be "555-987-1234"/ do
# end







# # Make it easier to express checking or unchecking several boxes at once
# #  "When I uncheck the following ratings: PG, G, R"
# #  "When I check the following ratings: G"


# Then /^I expect to see the organizations add form displayed/ do
#   # Make sure that all the movies in the app are visible in the table
#   fail "Unimplemented"
# end


