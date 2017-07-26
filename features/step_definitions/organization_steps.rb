# Add a declarative step here for populating the DB with movies.

Given /I am on the home page/ do 
  #fail "Unimplemented"
end

Then /I expect to be directed to the "(.*)"/ do
end

Given /I am on the Organizations page/ do |organization_table|
  organization_table.hashes.each do |organization|
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that movie to the database here.
     Organizations.create(organization)
   
  end
  #fail "Unimplemented"
end
When(/^I follow on 'Organizations' link$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I expect to be directed to the Current Organizations page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I select the  'New Organization'$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I fill 'UNO' in Organization$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I fill '(\d+) Dodge Street' in Address$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I fill '(\d+)\-(\d+)\-(\d+)' in Phone$/) do |arg1, arg2, arg3|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I fill 'Huong' in Contact$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I select 'Create Organization'$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I expect to see the updated organizations displayed\.$/) do
  pending # Write code here that turns the phrase above into concrete actions
end


# Make it easier to express checking or unchecking several boxes at once
#  "When I uncheck the following ratings: PG, G, R"
#  "When I check the following ratings: G"


Then /I expect to see the organizations add form displayed/ do
  # Make sure that all the movies in the app are visible in the table
  fail "Unimplemented"
end
