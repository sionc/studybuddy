# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :section do
    name           "Factory Section"
    association    :semester
    association    :course
  end
end
