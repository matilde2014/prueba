Feature: Signing in
  In order to use the site
  As a user
  I want to be able to sign in

  Scenario: No signing in via confirmation
    Given there are the following users:
    | email            | password   | unconfirmed |
    | user@example.com | password   | true        |
    When "user@example.com" opens the email whith subject "Confirmation instructions"
    And they click the first link in the email
    Then I should see "Your account was successfully confirmed"
    Then I should not see "Signend in as user@example.com"

    @working
    Scenario: Signing in via form
      Given there are the following user:
      | email            | password |
      | user@example.com | password |
      And I am signed in as them
      And I should see "Signed in as user@example.com"