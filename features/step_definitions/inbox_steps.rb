Given("the following user exists") do |table|
  table.hashes.each do |user|
    User.create(user)
  end
end

Given("I am signed in as {string}") do |user|
   user = User.find_by(name: user)
   login_as(user, scope: :user)
end

When("I visit the {string} page") do |page_name|
  visit page_path_from(page_name)
end

Then("I should see the {string} button") do |link|
  expect(page).to have_link link
end

# Then("I should have {string} messages") do |expected_count|
#
# end


def page_path_from(page_name)
  case page_name.downcase
    when 'inbox' then '/mailbox/inbox'
  end
end
