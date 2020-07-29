require 'rails_helper'

RSpec.describe Booking, type: :model do
  subject {
    described_class.new(date: "2020-07-05",
                        status: "Booked",
                        sport: Sport.create!(code: 200, name: "Tennis"),
                        facility: Facility.create!(name: "Central Court", mode: "Outdoor", sport: Sport.create!(code: 300, name: "Football")),
                        user: User.create!(email: "aaa@gmail.com", password: "ooooooooooo123", name: "Guilherme", telephone: "19997640987", numeroUSP: 9354323),
                        timeslot: Timeslot.create!(code: 15, weekday: 5, start_time: "2000-01-01 22:05:52", end_time: "2000-01-01 23:05:52")
                        )
  }
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a date" do
    subject.date = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a sport" do
    subject.sport = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a facility" do
    subject.facility = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a user" do
    subject.user = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a timeslot" do
    subject.timeslot = nil
    expect(subject).to_not be_valid
  end
end
