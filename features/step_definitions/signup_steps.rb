Given("I am on the home page") do
    visit root_path
end

When("I click on the {string} link") do |string|
    click_link string
end

Then("I should be on the {string} page") do |string|
    expect(page).to have_content(string)
end

Then("I should see the {string} field") do |string|
    expect(page).to have_field(string)
end

Given("a user {string} with password {string}") do |string, string2|
  visit root_path
end

Given("I am on the login page") do
  visit root_path
end

Given("I fill in {string} with {string}") do |string, string2|
  visit root_path
end

When("I press {string}") do |string|
  click_link string
end

Then("I should be on {string} page") do |string|
  visit root_path
end