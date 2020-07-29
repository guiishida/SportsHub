require 'rails_helper'

RSpec.describe "timeslots/index", type: :view do
  before(:each) do
    assign(:timeslots, [
      Timeslot.create!(
        code: 1,
        weekday: 3,
        start_time: "2000-01-01 22:00:00", 
        end_time: "2000-01-01 22:30:00"
      ),
      Timeslot.create!(
        code: 2,
        weekday: 3,
        start_time: "2000-01-01 22:30:00", 
        end_time: "2000-01-01 23:00:00"
      )
    ])
  end

  it "renders a list of timeslots" do
    render
    expect(response).to match('code\":2')
  end
end
