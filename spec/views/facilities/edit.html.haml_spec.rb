require 'rails_helper'

RSpec.describe "facilities/edit", type: :view do
  before(:each) do
    @facility = assign(:facility, Facility.create!(
      name: "Rod Laver Arena",
      mode: "Indoor",
      sport: Sport.create!(
          code: 12,
          name: "Tennis"
      )
    ))
  end

  it "renders the edit facility form" do
    render

    assert_select "form[action=?][method=?]", facility_path(@facility), "post" do

      assert_select "input[name=?]", "facility[name]"

      assert_select "input[name=?]", "facility[mode]"
      
    end
  end
end
