Given("I am on the {string} page") do |page_name|
  visit page_path_from(page_name)
end

When("I press the {string} button") do |login|
  click_link login
end

Then("I should be redirected to the {string} page") do |page_name|
  expect(page.current_path).to eq page_path_from(page_name)
end

def page_path_from(page_name)
  case page_name.downcase
    when 'login' then '/users/sign_in'
  end
end
