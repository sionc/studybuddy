require 'spec_helper'

describe "sections/edit.html.erb" do
  before(:each) do
    @section = assign(:section, stub_model(Section,
      :name => "MyString",
      :course_id => 1,
      :semester_id => 1
    ))
  end

  it "renders the edit section form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sections_path(@section), :method => "post" do
      assert_select "input#section_name", :name => "section[name]"
      assert_select "input#section_course_id", :name => "section[course_id]"
      assert_select "input#section_semester_id", :name => "section[semester_id]"
    end
  end
end
