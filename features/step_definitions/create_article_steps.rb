Given("I visit the landing page") do
    visit root_path
end
  
And("I click on {string} link") do |link|
    click_on link
end

When("I fill in {string} with {string}") do |field, input|
    fill_in field, with: input
end

And("I click on {string} button") do |button|
    click_on button
end

Then("I should be on {string} page") do |page|
    expect(page).to eq article_path
end

Given("I visit the {string} page") do |string|
    pending # Write code here that turns the phrase above into concrete actions
end
  
When("I click {string} link") do |string|
    pending # Write code here that turns the phrase above into concrete actions
end