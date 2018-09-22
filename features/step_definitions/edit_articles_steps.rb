Given("I visit the {string} page") do |title|
    expect(page.current_path).to eq article_path(title)
end