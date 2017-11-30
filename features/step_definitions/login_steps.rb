Given("there is a landing page") do
  visit root_path
end

When("I click on {string} link") do |link|
  click_link link
end

Then("I should be redirected to the {string} page") do |page_name|
  expect(page.current_path).to eq page_path_from(page_name)
end

def page_path_from(page_name)
    case page_name.downcase
    when 'login' then '/users/sign_in'
  end
end
