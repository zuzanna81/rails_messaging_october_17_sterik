Feature: Login Feature
  As a registered user
  In order to access the Craft Academy's Mailboxer
  I should be able to login

  Background:
    Given the following user exists
      | name   | email                | password   | password_confirmation |
      | Arnold | hotmale@hotmail.com  | whatever   | whatever              |


  Scenario: Access Login page
    Given I am on the "Landing" page
    When I press the "Login" button
    Then I should be redirected to the "Login" page


  Scenario: Visitor fills in all form inputs [Happy Path]
    Given I am on the "Login" page
    When I fill in "Email" with "hotmale@hotmail.com"
    And I fill in "Password" with "whatever"
    And I press the "Log in" button
    Then I should be redirected to the "Landing" page
    And I should see "Signed in successfully."
    And I should see "CA Mailboxer"
    And I should see "Hello, Arnold"
    And I should see "Inbox"
    And I should see "Logout"


  Scenario: Visitor fills in all form inputs except Password [Sad Path]
    Given I am on the "Login" page
    When I fill in "Email" with "hotmale@hotmail.com"
    And I press the "Log in" button
    Then I should see "Invalid Email or password."


  Scenario: Visitor fills in all form inputs except Email [Sad Path]
    Given I am on the "Login" page
    When I fill in "Password" with "whatever"
    And I press the "Log in" button
    Then I should see "Invalid Email or password."


  Scenario: Visitor fills in zero form inputs [Sad Path]
    Given I am on the "Login" page
    And I press the "Log in" button
    Then I should see "Invalid Email or password."


  Scenario: Visitor attempts to access sign in page when already signed in
    Given I am signed in as "Arnold"
    When I try to visit the "Login" page
    Then I should see "You are already signed in."


  Scenario: Visitor clicks on sign up from login page
    Given I am on the "Login" page
    When I press the "Forgot your password?" button
    Then I should be redirected to the "Password New" page
    And I should see "Forgot your password?"
    And I should see "Email"
    And I should see button "Send me reset password"


  Scenario: Visitor clicks on Send me reset password instructions with value in email [Happy Path]
    Given I am on the "Password New" page
    When I fill in "Email" with "hotmale@hotmail.com"
    And I press the "Send me reset password instructions" button
    Then I should not see "1 error prohibited this user from being saved:"
    Then I should not see "Email can't be blank"


  Scenario: Visitor clicks on Send me reset password instructions with nil value in email [Sad Path]
    Given I am on the "Password New" page
    When I press the "Send me reset password instructions" button
    Then I should see "1 error prohibited this user from being saved:"
    Then I should see "Email can't be blank"
