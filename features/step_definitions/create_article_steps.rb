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
    expect(page.current_path).to eq article_path(article)
end

When("I click {string} button") do |button|
    click_on button
end

When("show me the page") do
    save_and_open_page
end