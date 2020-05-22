require 'rails_helper'

RSpec.describe "facilities/show", type: :view do
  before(:each) do
    @facility = assign(:facility, Facility.create!(
      code: 2,
      name: "Name",
      type: "Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Type/)
  end
end
