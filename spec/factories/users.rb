FactoryBot.define do
  factory :user do
    first_name "User"
    sequence(:last_name) { |n| n }
    sequence(:email) { |n| "user-#{n}@example.com" }
  end
end
