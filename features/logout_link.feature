Feature: Log out link
  As a registered user
  In order to protect my account
  I should be able to log out

Scenario:
  Given I visit the inbox page
  And Show me the page
  And I should see the "Logout" link
  And There is a "Logout" link on the mailbox trash page
  And There is a "Logout" link on the home page
  When I click the "Logout" link
  Then I should be redirected to the home page
  And I should see the message "Signed out successfully."
