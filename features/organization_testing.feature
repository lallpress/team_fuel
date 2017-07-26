Feature: testing Organization page
As a staff member, I want to click a button on the homepage, add new organization
so that I can navigate directly to the Organizations page.

Background: an empty database from beginning and store organization name when added

Scenario: connect to Current Organizations page
Given I am on the home page
When I follow on 'Organizations' link
Then I expect to be directed to the Current Organizations page


Scenario: add a new organization to page
Given I am on the Current Organizations page
When I select the  'New Organization' 
And I fill 'UNO' in Organization
And I fill '6700 Dodge Street' in Address
And I fill '402-554-2100' in Phone
And I fill 'Huong' in Contact
And I select 'Create Organization'
Then I expect to see the updated organizations displayed.




