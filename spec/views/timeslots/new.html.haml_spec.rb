require 'rails_helper'

RSpec.describe "timeslots/new", type: :view do
  before(:each) do
    assign(:timeslot, Timeslot.new(
      code: 1,
      weekday: 1,
      start_time: "2000-01-01 22:00:00", 
      end_time: "2000-01-01 22:30:00"
    ))
  end

  it "renders new timeslot form" do
    render

    assert_select "form[action=?][method=?]", timeslots_path, "post" do

      assert_select "input[name=?]", "timeslot[code]"

      assert_select "input[name=?]", "timeslot[weekday]"
    end
  end
end
