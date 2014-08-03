# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :account do
    name { Faker::Lorem.word }
    balance 12.05
    association :user, factory: :user
  end
end
