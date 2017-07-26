Feature: update donor attributes
  
    As a staff member
    So that I can update a donor
    I want to open an edit form from the Donors page 
    
Background: donor in database
  
  Given the following donors exist:
    | donorName | phoneNum      |
    | XYZ Corp  | 402-654-9874  |
    | Test Inc. | 402-111-1111  |

Scenario: Access edit donors form from donors page
  Given I am on the donors page
  When I follow "XYZ Corp"
  Then I should be on the edit donor page
  
Scenario: Update a donor attribute
  Given I am on the edit form for "XYZ Corp"
  And I fill in "Phone" with "555-987-1234"
  Then the phone number for "XYZ Corp" should be "555-987-1234"