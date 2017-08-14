Feature:
    As a staff member, 
    So that I want to add, edit, delete, and show information in Inventory page
    
Background: inventories in database
  
  Given the following inventories exist:
    | itemnum   | orgnum        | quantity  | expires           | category  |
    | 1234      | UNO           | 12        | 2019/August/19    | Can       |
   
Scenario: connect to 'Inventories' page
    Given I am on the Fuel Donation Management System home page
    When I follow "Inventory"
    Then I should be on the Listing Inventories page
    
Scenario: add a new inventory to page
    Given I am on the Listing Inventories page
    When I follow "Add to Inventory"
    And I fill in "ItemNum" with "1345"
    And I fill in "Organization" with "PKI"
    And I fill in "Quantity" with "2100"
    And I press "Save"
    Then I should see "1345"
    
Scenario: Edit the existing inventories to page
    Given I am on the Fuel Donation Management System home page
    When I follow "Inventory"
    And I follow "Edit"
    And I fill in "Organization" with "UNOmaha"
    And I press "Save"
    Then I should see "UNOmaha"
    
Scenario: Delete an existing inventory to page
    Given I am on the Fuel Donation Management System home page
    When I follow "Inventory"
    And I delete the Inventory with the number of "1234"
    And a confirmation box saying "Are you sure?" should pop up
    And I want to click "Ok"
    Then I should not see "1234"
    
Scenario: Show an existing record of inventory
    Given I am on the Fuel Donation Management System home page
    When I follow "Inventory"
    And I show the Inventory with the number of "1234"
    Then I should see "1234"
    

    
Scenario: Check for the duplicated item number for Inventory
    Given I am on the Listing Inventories page
    When I follow "Add to Inventory"
    And I fill in "ItemNum" with "1234"
    And I fill in "Organization" with "UNO"
    And I fill in "Quantity" with "200"
    And I press "Save"
    Then a confirmation box saying "Itemnum has already been taken" should pop up 