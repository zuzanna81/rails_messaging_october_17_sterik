Given("the following user exists") do |table|
  table.hashes.each do |user|
    User.create(user)
  end
end

Given("I am signed in as {string}") do |user|
  user = User.find_by(name: user)
  login_as(user, scope: :user)
end

Given("I am on the {string} page") do |page_name|
  visit page_path_from(page_name)
end


When("I click the {string} button") do |button|
  click_link button
end

Then("I should be redirected to the {string} page") do |page_name|
  expect(page.current_path).to eq page_path_from(page_name)
end

Then("I should see {string}") do |text|
  expect(page).to have_content text
end

def page_path_from(page_name)
  case page_name.downcase
    when 'landing' then '/'
    when 'inbox' then '/mailbox/inbox'
  end
end
