# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :belonging do
    association :user
    association :team
    admin false
  end
end
