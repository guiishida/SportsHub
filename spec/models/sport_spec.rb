require 'rails_helper'

RSpec.describe Sport, type: :model do
  subject {
    described_class.new(code: 1,
                        name: "Tennis")
  }
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a code" do
    subject.code = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end
end
