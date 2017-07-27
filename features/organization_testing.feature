Feature: testing Organization page
    As a staff member, I want to click a button on the homepage, add new organization
    so that I can navigate directly to the Organizations page.

Background: an empty database from beginning and store organization name when added

Scenario: connect to 'Current Organizations' page
    Given I am on the Fuel Donation Management System home page
    When I follow "Current Organizations"
    Then I should be on the Current Organizations page


Scenario: add a new organization to page
    Given I am on the Current Organizations page
    When I follow "New Organization"
    And I fill in "Organization" with "UNO"
    And I fill in "Address" with "6700 Dodge Street"
    And I fill in "Phone" with "402-554-2100"
    And I fill in "Contact" with "Huong"
    And I press "Create Organization"
    Then I should see "UNO" 
