require 'spec_helper'

describe "sections/new.html.erb" do
  before(:each) do
    assign(:section, stub_model(Section,
      :name => "MyString",
      :course_id => 1,
      :semester_id => 1
    ).as_new_record)
  end

  it "renders new section form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sections_path, :method => "post" do
      assert_select "input#section_name", :name => "section[name]"
      assert_select "input#section_course_id", :name => "section[course_id]"
      assert_select "input#section_semester_id", :name => "section[semester_id]"
    end
  end
end
