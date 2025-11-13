Feature: User Management
  As a developer
  I want to test user functionality
  So that I can verify user operations work correctly

  Scenario: Create a new user
    When I create a user with id "1" and name "Test User"
    Then the user should have id 1 and name "Test User"

  Scenario: User says hello
    Given I have a user with name "John"
    When I ask the user to say hello
    Then I should see "Hello there! I'm John"
