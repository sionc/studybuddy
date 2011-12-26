class University < ActiveRecord::Base
  has_many :departments
  has_many :semesters
end
