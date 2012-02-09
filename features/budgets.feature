Feature: Budgets

  Scenario: List all budgets
    Given existing user
      And user is logged in
      And the user own 3 budgets
      And there are another 2 budgets
    When I visit page for budgets
    Then I should see 3 budgets

  Scenario: List items of budget
    Given existing user
      And user is logged in
    Given the user own one budget
      And the budget has 2 expenses
      And the budget has 1 income
    When I visit page for budgets
     And I click on Show link
    Then I should see table with all expenses
     And I should see table with all incomes
