require 'rails_helper'

RSpec.describe "universities/index", type: :view do
  before(:each) do
    assign(:universities, [
      University.create!(
        name: "Name",
        description: "MyText",
        image: "",
        location: "Location"
      ),
      University.create!(
        name: "Name",
        description: "MyText",
        image: "",
        location: "Location"
      )
    ])
  end

  it "renders a list of universities" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "".to_s, count: 2
    assert_select "tr>td", text: "Location".to_s, count: 2
  end
end
