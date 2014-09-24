Feature: Editing Classes
  In order to update a class information
  As a teacher
  I want to be able to do that through an interface

  Background:
     Given there is a class called "Tecnologia 1"
     And I am on the class page
     When I follow "Tecnologia 1"
     And I follow "Edit class"

    @done
    Scenario: Updating a group
      When I fill in "Name" with "Class Tecnologia 1 beta"
      And I press "Update class"
      Then I should see "Class has been updated."
      And I should be on the group page for "Class tecnologia 1 beta"

    //Mirar lo que puso despues