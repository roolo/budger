Feature: Budget list

  Scenario: Show detail of budget
    Given existing user
      And user is logged in
    Given the user own one budget
    When I visit page for budgets
     And I click on Show link
    Then I should see a detail of that budget

  Scenario: Editing a budget
    Given existing user
      And user is logged in
    Given the user own one budget
    When I visit page for budgets
     And I click on Edit link
    Then I should see edit form for budget

    When I submit budget form with "New name"
    Then I should see budget form with "New name"

  Scenario: Deleting a budget
    Given existing user
      And user is logged in
    Given the user own one budget
    When I visit page for budgets
     And I click on Destroy link
    Then There should be no items in the table
