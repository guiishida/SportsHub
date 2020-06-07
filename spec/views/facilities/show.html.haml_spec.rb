require 'rails_helper'

RSpec.describe "facilities/show", type: :view do
  before(:each) do
    @facility = assign(:facility, Facility.create!(
      name: "Name",
      mode: "Mode",
      sport: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Mode/)
    expect(rendered).to match(//)
  end
end
