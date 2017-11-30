Given('I visit the inbox page') do
  visit mailbox_inbox_path
end

And("I should see the {string} link") do |link|
  expect(page).to have_link 'Logout'
end

Given("Show me the page") do
  save_and_open_page
end



# Given("There is a {string} link on the mailbox sent page") do |string|
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# Given("There is a {string} link on the mailbox trash page") do |string|
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# Given("There is a {string} link on the home page") do |string|
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# When("I click the {string} link") do |link|
#   click_link link
# end
#
# Then("I should be redirected to the home page") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# Then("I should see the message {string}") do |string|
#   pending # Write code here that turns the phrase above into concrete actions
# end
