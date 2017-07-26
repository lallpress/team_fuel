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
When /^I follow 'Organizations'$/ do
  
end

Then /^I expect to be directed to the Current Organizations page$/ do
  pending # Write code here that turns the phrase above into concrete actions
end

Given /I am on the Current Organizations page/ do 
end

And /^(?:|I )select "Create Organization" from "Current Organizations"$/ do |value, field|
  select(value, :from => field)
end

Then /^I should see the updated organizations displayed/ do |text|
  if page.respond_to? :should
    page.should have_content(text)
  else
    assert page.has_content?(text)
  end
end

Then /^I should see \/([^\/]*)\/$/ do |regexp|
  regexp = Regexp.new(regexp)

  if page.respond_to? :should
    page.should have_xpath('//*', :text => regexp)
  else
    assert page.has_xpath?('//*', :text => regexp)
  end
end







# Make it easier to express checking or unchecking several boxes at once
#  "When I uncheck the following ratings: PG, G, R"
#  "When I check the following ratings: G"


Then /^I expect to see the organizations add form displayed/ do
  # Make sure that all the movies in the app are visible in the table
  fail "Unimplemented"
end
