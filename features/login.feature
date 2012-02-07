Feature: Login

  Scenario: Visit the login page
    When I visit page with login form
    Then I should see a login page

  Scenario: Login as test user
    Given existing user
    When I visit page with login form
     And I submit filled in login form
    Then I should be logged in
