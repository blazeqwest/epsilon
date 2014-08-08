# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :account do
    name { Faker::Lorem.characters(10) }
    balance { Random.new.rand(10.0) }
    association :user
  end
end
