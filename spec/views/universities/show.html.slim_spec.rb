require 'rails_helper'

RSpec.describe "universities/show", type: :view do
  before(:each) do
    @university = assign(:university, University.create!(
      name: "Name",
      description: "MyText",
      image: "",
      location: "Location"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Location/)
  end
end
