Given("I am on the {string} page") do |page_name|
  visit page_path_from(page_name)
end

When("I press the {string} button") do |login|
  click_link_or_button login
end

Then("I should be redirected to the {string} page") do |page_name|
  expect(page.current_path).to eq page_path_from(page_name)
end

Given("the following user exists") do |table|
  table.hashes.each do |user|
    User.create(user)
  end
end

Given("I fill in {string} with {string}") do |field, value|
  fill_in field, with: value
end

Then("I should see {string}") do |text|
  expect(page).to have_content text
end

Given("I am signed in as {string}") do |user|
  user = User.find_by(name: user)
  login_as(user, scope: :user)
end

When("I try to visit the {string} page") do |page_name|
  visit page_path_from(page_name)
end

Then("show me the page") do
  save_and_open_page
end

Then("I log out") do
  logout
end

def page_path_from(page_name)
  case page_name.downcase
    when 'login' then '/users/sign_in'
    when 'landing' then '/'
    when 'inbox' then '/mailbox/inbox'
  end
end
