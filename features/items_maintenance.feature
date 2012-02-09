Feature: Items maintenance

  Scenario: Show detail of item
    Given existing user
      And user is logged in
    Given the user own one budget
      And the budget has 2 expenses
      And the budget has 1 income
    When I visit page for items of that budget
     And I click on Show link
    Then I should see a detail of that item

  Scenario: Editing an item
    Given existing user
      And user is logged in
    Given the user own one budget
      And the budget has 2 expenses
      And the budget has 1 income
    When I visit page for items of that budget
     And I click on Edit link
    Then I should see edit form for item

  Scenario: Deleting a item
    Given existing user
      And user is logged in
    Given the user own one budget
      And the budget has 2 expenses
      And the budget has 1 income
    When I visit page for budgets
     And I click on Destroy link
    Then There should be no items in the table
