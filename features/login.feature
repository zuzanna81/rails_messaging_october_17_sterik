Feature: Login Feature
  As a registered user
  In order to access the Craft Academy's Mailboxer
  I should be able to login

  Background:
    

  Scenario: Access Login page
    Given I am on the "Landing" page
    When I press the "Login" button
    Then I should be redirected to the "Login" page


  Scenario: Filling in all form inputs [Happy Path]
    Given I fill in "Email" with "rickroll@hotmail.com"
    And I fill in "Password" with ""
