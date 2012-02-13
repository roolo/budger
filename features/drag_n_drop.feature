Feature: Drag 'n' Drop
  
  @javascript 
  Scenario: Moving expense into another budget
    Given existing user
      And user is logged in
    Given the user own one budget
      And the budget has one expense
      And the user also own another budget
    Given I am in show view of budget
    When I drag the item on another budget
    Then My expense should be in another budget