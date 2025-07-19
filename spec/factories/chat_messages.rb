FactoryBot.define do
  factory :chat_message do
    user { nil }
    content { "MyText" }
    room { "MyString" }
  end
end
