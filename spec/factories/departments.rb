# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :department do
    name           "Factory Department"
    association    :university
  end
end
