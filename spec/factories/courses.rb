# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :course do
    name           "Factory Course"
    association    :department
  end
end
