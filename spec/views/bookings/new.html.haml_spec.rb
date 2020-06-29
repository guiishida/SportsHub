require 'rails_helper'

RSpec.describe "bookings/new", type: :view do
  before(:each) do
    assign(:booking, Booking.new(
      status: "MyString",
      sport: nil,
      facility: nil,
      user: nil,
      timeslot: nil
    ))
  end

  it "renders new booking form" do
    render

    assert_select "form[action=?][method=?]", bookings_path, "post" do

      assert_select "input[name=?]", "booking[status]"

      assert_select "input[name=?]", "booking[sport_id]"

      assert_select "input[name=?]", "booking[facility_id]"

      assert_select "input[name=?]", "booking[user_id]"

      assert_select "input[name=?]", "booking[timeslot_id]"
    end
  end
end
