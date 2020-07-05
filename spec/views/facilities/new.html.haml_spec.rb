require 'rails_helper'

RSpec.describe "facilities/new", type: :view do
  before(:each) do
    assign(:facility, Facility.new(
      name: "Court 1",
      mode: "Outdoor",
      sport: Sport.create!(
          code: 12,
          name: "Tennis"
      )
    ))
  end

  it "renders new facility form" do
    render

    assert_select "form[action=?][method=?]", facilities_path, "post" do

      assert_select "input[name=?]", "facility[name]"

      assert_select "input[name=?]", "facility[mode]"

    end
  end
end
