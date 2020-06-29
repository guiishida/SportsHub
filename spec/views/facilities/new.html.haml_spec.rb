require 'rails_helper'

RSpec.describe "facilities/new", type: :view do
  before(:each) do
    assign(:facility, Facility.new(
      name: "MyString",
      mode: "MyString",
      sport: nil
    ))
  end

  it "renders new facility form" do
    render

    assert_select "form[action=?][method=?]", facilities_path, "post" do

      assert_select "input[name=?]", "facility[name]"

      assert_select "input[name=?]", "facility[mode]"

      assert_select "input[name=?]", "facility[sport_id]"
    end
  end
end
