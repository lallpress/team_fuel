Feature: testing Organization page
    As a staff member, I want to click a button on the homepage, add new organization
    so that I can navigate directly to the Organizations page.

Background: an empty database from beginning and store organization name when added
  Given the following organizations exist:
    | org_name     | address       | phone          | contact_id |
    | UNO          | 6700 Dodge St | 402-654-9874   | Huong      |

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

Scenario: Edit an existing organization to page
    Given I am on the Fuel Donation Management System home page
    When I follow "Current Organizations"
    And I follow "Edit"
    And I fill in "Organization" with "UNOmaha"
    And I press "Update Organization"
    Then I should see "UNOmaha"
    
Scenario: Delete an existing organization to page
    Given I am on the Fuel Donation Management System home page
    When I follow "Current Organizations"
    And I delete the Organization with the Name of "UNO"
    And a confirmation box saying "Are you sure you want to delete this organization?" should pop up
    And I want to click "Ok"
    Then I should not see "UNO"
    
Scenario: Show an existing record of organization
    Given I am on the Fuel Donation Management System home page
    When I follow "Current Organizations"
    And I show the Organization with the Name of "UNO"
    Then I should see "UNO"
    
    