Given("I am on the {string} page") do |page_name|
  visit page_path_from(page_name)
end

When("I press the {string} button") do |login|
  click_link login
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


def page_path_from(page_name)
  case page_name.downcase
    when 'login' then '/users/sign_in'
  end
end
