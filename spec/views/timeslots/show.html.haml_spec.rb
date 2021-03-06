require 'rails_helper'

RSpec.describe "timeslots/show", type: :view do
  before(:each) do
    @timeslot = assign(:timeslot, Timeslot.create!(
      code: 2,
      weekday: 3,
      start_time: "2000-01-01 22:00:00", 
      end_time: "2000-01-01 22:30:00"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
