FactoryBot.define do
  factory :comment do
    email { "MyEmail@email.com" }
    views { "MyText" }
    article { FactoryBot.create(:article) }
  end
end