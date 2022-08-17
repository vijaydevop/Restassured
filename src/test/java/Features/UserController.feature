Feature: UserController feature
  Background: create a user
    Given user details

    Scenario: verify if user resources can be added
      When creating a user
      Then user must be created


  Scenario: Verify existing user marks is updated
    When updating the marks
    Then user marks is updated

    Scenario: Verify the user is not created with no name
    When creating a user with no name in body field
    Then Name is required error message thrown


  Scenario: Verify the user is deleted
    When delete a user
    Then user is deleted

    Scenario: Verify the users list is displayed
      When creating a user
      Then users list must be displayed

      Scenario: Verify the user without giving address
        When creating a user without address
        Then Address is required error message thrown


  Scenario: Verify the user is able to create with no marks
    When creating a user with no marks
    Then user can be created with zero marks

  Scenario: Verify the user name is updated
    When Updating a user name
    Then User name must be updated


  Scenario: verify that the particular user in the list is displayed
    When creating a user
    Then user with particular id must be displayed

  Scenario: verify that the invalid id user is displayed
    When creating a user
    Then Blank page must be displayed

  Scenario: Verify the user address is updated
    When Creating a user with address
    Then user address must be updated

    Scenario: Verify the invalid id is deleted
      When delete a user
      Then internal server error is displayed

      Scenario: Verify if user multiple resources can be added
        When creating a multiple users
        Then multiple users are created



