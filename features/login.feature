Feature: Login link
  As a registered user
  In order to access the Craft Academy's Mailboxer
  I should be able to login

  Scenario: Access Sign Up page
    Given I am on the "Landing" page
    When I press the "Login" button
    Then I should be redirected to the "Login" page
