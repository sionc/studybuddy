# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :semester do
    name           "Factory Semester"
    association    :university
    start_date     "2012-01-15"
    end_date       "2012-05-10"
  end
end
