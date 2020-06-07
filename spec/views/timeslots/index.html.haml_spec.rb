require 'rails_helper'

RSpec.describe "timeslots/index", type: :view do
  before(:each) do
    assign(:timeslots, [
      Timeslot.create!(
        code: 2,
        weekday: 3
      ),
      Timeslot.create!(
        code: 2,
        weekday: 3
      )
    ])
  end

  it "renders a list of timeslots" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
  end
end
