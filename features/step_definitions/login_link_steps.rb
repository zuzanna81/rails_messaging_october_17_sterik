Given("there is a landing page") do
  visit root_path
end

When("I click on {string} link") do |link|
  click_link link
end

Then("I should be redirected to the users sign in page") do
  visit '/users/sign_in'
end