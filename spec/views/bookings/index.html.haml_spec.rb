require 'rails_helper'

RSpec.describe "bookings/index", type: :view do
  before(:each) do
    assign(:bookings, [
      Booking.create!(
        date: "2020-07-05",
        status: "Booked",
        sport: Sport.create!(code: 200, name: "Tennis"),
        facility: Facility.create!(name: "Central Court", mode: "Outdoor", sport: Sport.create!(code: 300, name: "Football")),
        user: User.create!(email: "aaa@gmail.com", password: "ooooooooooo123", name: "Guilherme", telephone: "19997640987", numeroUSP: 9354323),
        timeslot: Timeslot.create!(code: 15, weekday: 5, start_time: "2000-01-01 22:05:52", end_time: "2000-01-01 23:05:52")
      ),
      Booking.create!(
        date: "2020-07-06",
        status: "Booked",
        sport: Sport.create!(code: 220, name: "Table Tennis"),
        facility: Facility.create!(name: "Central Court", mode: "Outdoor", sport: Sport.create!(code: 220, name: "Table Tennis")),
        user: User.create!(email: "weeeeee@gmail.com", password: "ooooooooooo123", name: "Guilherme", telephone: "19997640987", numeroUSP: 9354327),
        timeslot: Timeslot.create!(code: 150, weekday: 6, start_time: "2000-01-01 22:05:52", end_time: "2000-01-01 23:05:52")
      )
    ])
  end

  it "renders a list of bookings" do
    render
    expect(response).to match('date\":\"2020-07-06\"')
  end
end
