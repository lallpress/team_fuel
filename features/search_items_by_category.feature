# Feature: search for items by categories
 
#   As an employee
#   So that I can find items with my favorite category
#   I want to include and search on category information in items I enter
 
# Background: items in database
 
#       Given the following items exist:
# #   | ItemNum      | Organization Number | Quantity     | Expired Date    | Category      |
# #   | 0            | 9                   | 4872         |   2017-11-08    | Dried Food    |
# #   | 1            | 9                   | 4380         |   2017-10-11    | Dried Food    |
#     | 2            | 6                   | 1949         |   2017-08-03    |               |
# #   | 3            | 5                   | 701          |   2017-11-08    | Supplies      |
 
# Scenario: add category to existing item
#   When I go to the page for "2"
#   And  I fill in "Category" with "Dried Food"
#   And  I press "Save"
#   Then the category of "2" should be "Dried Food"
 
