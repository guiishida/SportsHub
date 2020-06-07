require 'rails_helper'

RSpec.describe "timeslots/edit", type: :view do
  before(:each) do
    @timeslot = assign(:timeslot, Timeslot.create!(
      code: 1,
      weekday: 1
    ))
  end

  it "renders the edit timeslot form" do
    render

    assert_select "form[action=?][method=?]", timeslot_path(@timeslot), "post" do

      assert_select "input[name=?]", "timeslot[code]"

      assert_select "input[name=?]", "timeslot[weekday]"
    end
  end
end
