FactoryBot.define do
  factory :trade do
    portfolio { nil }
    symbol { "MyString" }
    quantity { 1 }
    price { "9.99" }
    trade_type { "MyString" }
  end
end
