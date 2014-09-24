Feature:Creating classes

  In order to have class to
  As a teacher
  I want to create easily

  Background:
    Given I am on the class page
    And I follow "New Class"

    @done
    Scenario: Creating class
      When I fill in "Name" with "Tecnologia 1"
      And I press "Create class"
      Then I should see "Class has been created."
      And I should be on the class page for "Tecnologia 1"

    @done
    Scenario: Creating an existing class
      Given there is a class called "Tecnologia 1"
      When I fill in "Name" with "Tecnologia 1"
      And I press "Create class"
      Then I should see "Class has not beet created."
      And I should see "Name has already been taken."