require 'rails_helper'

RSpec.describe "facilities/index", type: :view do
  before(:each) do
    assign(:facilities, [
      Facility.create!(
        name: "Name",
        mode: "Mode",
        sport: nil
      ),
      Facility.create!(
        name: "Name",
        mode: "Mode",
        sport: nil
      )
    ])
  end

  it "renders a list of facilities" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Mode".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
