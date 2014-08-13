# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :transaction do
    amount { Faker::Number.number(2) }
    association :account
  end
end
