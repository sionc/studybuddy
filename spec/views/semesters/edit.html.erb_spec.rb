require 'spec_helper'

describe "semesters/edit.html.erb" do
  before(:each) do
    @semester = assign(:semester, stub_model(Semester,
      :name => "MyString",
      :university_id => 1
    ))
  end

  it "renders the edit semester form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => semesters_path(@semester), :method => "post" do
      assert_select "input#semester_name", :name => "semester[name]"
      assert_select "input#semester_university_id", :name => "semester[university_id]"
    end
  end
end
