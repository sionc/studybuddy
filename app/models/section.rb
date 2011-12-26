class Section < ActiveRecord::Base
  belongs_to :course
  belongs_to :semester

  # Validations
  validates :name, :presence => true
  validates :course_id, :presence => true
  validates :semester_id, :presence => true
end
