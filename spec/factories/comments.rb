FactoryBot.define do
  factory :comment do
    commenter { "MyEmail@email.com" }
    body { "MyText" }
    article { FactoryBot.create(:article) }
  end
end