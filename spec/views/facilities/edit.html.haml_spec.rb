require 'rails_helper'

RSpec.describe "facilities/edit", type: :view do
  before(:each) do
    @facility = assign(:facility, Facility.create!(
      code: 1,
      name: "MyString",
      type: ""
    ))
  end

  it "renders the edit facility form" do
    render

    assert_select "form[action=?][method=?]", facility_path(@facility), "post" do

      assert_select "input[name=?]", "facility[code]"

      assert_select "input[name=?]", "facility[name]"

      assert_select "input[name=?]", "facility[type]"
    end
  end
end
