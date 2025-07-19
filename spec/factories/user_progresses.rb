FactoryBot.define do
  factory :user_progress do
    user { nil }
    tutorial_completed { "MyString" }
    progress { 1 }
  end
end
