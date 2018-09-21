Given("I visit the {string} page") do |title|
    # article = Article.find_by title: title
    expect(page.current_path).to eq article_path(title)
end