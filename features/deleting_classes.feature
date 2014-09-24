Feature: Deleting groups
  In order to remove classes
  As teacher
  I want to make it disappear

  Background:
    Given there is a class calle "Tecnologia 1"
    //no se que poner aqui
    And I am on the class page
    When I follow "Tecnologia 1"


    @done
    Scenario: Deleting classes
      When I follow "Delete class"
      Then I should see "Class has been deleted."
      And I should not see "Group I"
      //no se que poner aqui