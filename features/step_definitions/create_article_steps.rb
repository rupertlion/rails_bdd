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

Then("I should be on {string} page") do |title|
    article = Article.find_by title: title
    expect(current_path).to eq articles_path(article)
end

When("I click {string} button") do |button|
    click_on button
end