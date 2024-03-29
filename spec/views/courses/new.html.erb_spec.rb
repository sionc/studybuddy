require 'spec_helper'

describe "courses/new.html.erb" do
  before(:each) do
    assign(:course, stub_model(Course,
      :name => "MyString",
      :department_id => 1
    ).as_new_record)
  end

  it "renders new course form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => courses_path, :method => "post" do
      assert_select "input#course_name", :name => "course[name]"
      assert_select "input#course_department_id", :name => "course[department_id]"
    end
  end
end
