require 'rails_helper'

RSpec.describe "bookings/edit", type: :view do
  before(:each) do
    @booking = assign(:booking, Booking.create!(
      status: "MyString",
      sport: nil,
      facility: nil,
      user: nil,
      timeslot: nil
    ))
  end

  it "renders the edit booking form" do
    render

    assert_select "form[action=?][method=?]", booking_path(@booking), "post" do

      assert_select "input[name=?]", "booking[status]"

      assert_select "input[name=?]", "booking[sport_id]"

      assert_select "input[name=?]", "booking[facility_id]"

      assert_select "input[name=?]", "booking[user_id]"

      assert_select "input[name=?]", "booking[timeslot_id]"
    end
  end
end
