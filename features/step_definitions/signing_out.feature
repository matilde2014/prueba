Feature: Signing out
  In order to go out the site
  As a user
  I want to be able to sign out

  @working
  Scenario: Signing out
    Given there are following users:
      | email            | password |
      | user@example.com | password |
    And I am signed in as "user@example.com"
    And I am on the cuaderno page
    And I follow "Sign out"
    Then I should see "Signed