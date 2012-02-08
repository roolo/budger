Feature: Pages secured by login

  Scenario: Visiting welcome page
    Given Not logged in user
    When I visit welcome page
    Then I should see a welcome page

  Scenario: Visiting budgets page
    Given Not logged in user
    When I visit page for budgets
    Then I should see a login page

  Scenario: Visiting items page
    Given Not logged in user
    When I visit page for items
    Then I should see a login page

