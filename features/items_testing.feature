Feature: testing Organization page
    As a staff member, I want to click a button on the homepage, add new item
    so that I can navigate directly to the Items page.

Background: an empty database from beginning and store organization name when added
  Given the following items exist:
    | itemName     | category      | 
    | 12345        | Canned        | 

Scenario: connect to 'Current Items' page
    Given I am on the Fuel Donation Management System home page
    When I follow "Current Items"
    Then I should be on the Current Items page


Scenario: add a new item to page
    Given I am on the Current Items page
    When I follow "New Item"
    And I fill in "Item" with "12347"
    And I select "Canned" from "Category"
    And I press "Create Item"
    Then I should see "12347" 

Scenario: Edit an existing item to page
    Given I am on the Fuel Donation Management System home page
    When I follow "Current Items"
    And I edit the Item with the number of "12345"
    And I fill in "Item" with "12346"
    And I press "Update Item"
    Then I should see "12346"
    
Scenario: Delete an existing organization to page
    Given I am on the Fuel Donation Management System home page
    When I follow "Current Items"
    And I delete the Item with the number of "12345"
    And a confirmation box saying "Are you sure you want to delete this item?" should pop up
    And I want to click "Ok"
    Then I should not see "12345"
    
Scenario: Show an existing record of organization
    Given I am on the Fuel Donation Management System home page
    When I follow "Current Items"
    And I show the Item with the number of "12345"
    Then I should see "12345"