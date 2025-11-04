Feature: User Registration
  As a new user
  I want to register an account
  So I can access the application

  Scenario: Successful registration with valid data
    Given I am on the registration page
    When I fill in "Email" with "test@example.com"
    And I fill in "Password" with "password123"
    And I fill in "Password Confirmation" with "password123"
    And I click "Register"
    Then I should see "Welcome to our application!"
    And I should receive a welcome email

  Scenario: Failed registration with existing email
    Given a user exists with email "existing@example.com"
    When I attempt to register with email "existing@example.com"
    And I fill in "Password" with "password123"
    And I fill in "Password Confirmation" with "password123"
    And I click "Register"
    Then I should see "Email has already been taken"