require 'rails_helper'

RSpec.describe "bookings/new", type: :view do
  before(:each) do
    assign(:booking, Booking.new(
      date: "2020-07-05",
      status: "Booked",
      sport: Sport.create!(code: 200, name: "Tennis"),
      facility: Facility.create!(name: "Central Court", mode: "Outdoor", sport: Sport.create!(code: 300, name: "Football")),
      user: User.create!(email: "aaa@gmail.com", password: "ooooooooooo123", name: "Guilherme", telephone: "19997640987", numeroUSP: 9354323),
      timeslot: Timeslot.create!(code: 15, weekday: 5, start_time: "2000-01-01 22:05:52", end_time: "2000-01-01 23:05:52")
    ))
  end

  it "renders new booking form" do
    render

    assert_select "form[action=?][method=?]", bookings_path, "post" do

      #assert_select "select[name=?]", "booking[date]"

      assert_select "input[name=?]", "booking[status]"

      # assert_select "input[name=?]", "booking[sport_id]"

      # assert_select "input[name=?]", "booking[facility_id]"

      # assert_select "input[name=?]", "booking[user_id]"

      # assert_select "input[name=?]", "booking[timeslot_id]"
    end
  end
end
