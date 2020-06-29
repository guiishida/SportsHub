require 'rails_helper'

RSpec.describe "timeslots/show", type: :view do
  before(:each) do
    @timeslot = assign(:timeslot, Timeslot.create!(
      code: 2,
      weekday: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
