require 'rails_helper'

RSpec.describe Timeslot, type: :model do
  subject {
    described_class.new(code: 1,
                        weekday: 1,
                        start_time: DateTime.now,
                        end_time: DateTime.now + 1.week)
  }
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a code" do
    subject.code = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a weekday" do
    subject.weekday = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a start_time" do
    subject.start_time = nil
    expect(subject).to_not be_valid
  end
  
  it "is not valid without a end_time" do
    subject.end_time = nil
    expect(subject).to_not be_valid
  end
end
