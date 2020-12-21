require 'rails_helper'

RSpec.describe "universities/edit", type: :view do
  before(:each) do
    @university = assign(:university, University.create!(
      name: "MyString",
      description: "MyText",
      image: "",
      location: "MyString"
    ))
  end

  it "renders the edit university form" do
    render

    assert_select "form[action=?][method=?]", university_path(@university), "post" do

      assert_select "input[name=?]", "university[name]"

      assert_select "textarea[name=?]", "university[description]"

      assert_select "input[name=?]", "university[image]"

      assert_select "input[name=?]", "university[location]"
    end
  end
end
