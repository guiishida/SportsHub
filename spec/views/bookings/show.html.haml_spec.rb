require 'rails_helper'

RSpec.describe "bookings/show", type: :view do
  before(:each) do
    @booking = assign(:booking, Booking.create!(
      date: "2020-07-05",
      status: "Booked",
      sport: Sport.create!(code: 200, name: "Tennis"),
      facility: Facility.create!(name: "Central Court", mode: "Outdoor", sport: Sport.create!(code: 300, name: "Football")),
      user: User.create!(email: "aaa@gmail.com", password: "ooooooooooo123", name: "Guilherme", telephone: "19997640987", numeroUSP: 9354323),
      timeslot: Timeslot.create!(code: 15, weekday: 5, start_time: "2000-01-01 22:05:52", end_time: "2000-01-01 23:05:52")
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2020-07-05/)
    expect(rendered).to match(/Booked/)
  end
end
