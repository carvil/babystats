# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    name "Carlos"
    email "my@email.com"
    country "Portugal"
    city "Porto"
  end
end
