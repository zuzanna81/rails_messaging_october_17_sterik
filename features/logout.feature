Feature: Logout Feature
  As a registered user
  In order to protect my account
  I should be able to logout

  Background:
    Given the following user exists
      | name   | email                | password   | password_confirmation |
      | Arnold | hotmale@hotmail.com  | whatever   | whatever              |

    Scenario: The user attempts to logout
      Given I am signed in as "Arnold"
      And I am on the "Inbox" page
      When I click the "Logout" button
      Then I should be redirected to the "Landing" page
      And I should see "Signed out successfully."
