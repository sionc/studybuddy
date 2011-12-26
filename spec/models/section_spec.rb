require 'spec_helper'

describe Section do
 before(:each) do
    @course = Factory.create(:course)
    @semester = Factory.create(:semester)
    @attr = {:name => "Spec Section Name", :course_id => @course.id, :semester_id => @semester.id }
  end

  it "should create a new record given valid attributes" do
    Section.create!(@attr)
  end

  it "should require a name" do
    invalid_section = Section.new(@attr.merge(:name => nil))
    invalid_section.should_not be_valid
  end

  it "should require a course_id" do
    invalid_section = Section.new(@attr.merge(:course_id => nil))
    invalid_section.should_not be_valid
  end

  it "should require a semester_id" do
    invalid_section = Section.new(@attr.merge(:semester_id => nil))
    invalid_section.should_not be_valid
  end
end
