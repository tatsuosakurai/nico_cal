# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :face do
    association :user
    date Date.today
    status 1
  end
end
