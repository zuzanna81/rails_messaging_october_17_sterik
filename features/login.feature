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
