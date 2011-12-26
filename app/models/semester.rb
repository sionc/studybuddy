class Semester < ActiveRecord::Base
  belongs_to :university
  has_many :sections
end
