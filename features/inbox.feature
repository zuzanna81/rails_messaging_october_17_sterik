Feature: Inbox
As a registered user
In order to get an overview of my received messages
I should see received emails organised and listed on the Inbox page

Background:
    Given the following user exists
    | name   | email                | password   | password_confirmation |
    | Arnold | hotmale@hotmail.com  | whatever   | whatever              |

Scenario: Display on the Inbox page
  Given I am signed is as "Arnold"
  When I am on the "Inbox" page
  Then I should see the "Compose" button
  And I should see the "Inbox" button
  And I should have "0" messages
  And I should see the "Sent" button
  And I should see the "Trash" button
