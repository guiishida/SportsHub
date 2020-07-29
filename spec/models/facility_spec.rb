require 'rails_helper'

RSpec.describe Facility, type: :model do
  subject {
    described_class.new(name: "Central Court",
                        mode: "Outdoor",
                        sport: Sport.create!(code: 1, name: "Tennis")
                        )
  }
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a mode" do
    subject.mode = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a sport" do
    subject.sport = nil
    expect(subject).to_not be_valid
  end
end
