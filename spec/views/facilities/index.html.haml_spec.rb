require 'rails_helper'

RSpec.describe "facilities/index", type: :view do
  before(:each) do
    assign(:facilities, [
      Facility.create!(
        code: 2,
        name: "Name",
        type: "Type"
      ),
      Facility.create!(
        code: 2,
        name: "Name",
        type: "Type"
      )
    ])
  end

  it "renders a list of facilities" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Type".to_s, count: 2
  end
end
