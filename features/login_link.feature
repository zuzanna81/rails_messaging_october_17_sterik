Feature: Login link
  As a registered user
  In order to access the Craft Academy's Mailboxer
  I should be able to login

  Scenario: As a user I want to be able to login to my account
    Given there is a landing page
    When I click on "Login" link
    Then I should be redirected to the users sign in page