require 'rails_helper'

RSpec.describe "teams/new", type: :view do
  before(:each) do
    assign(:team, Team.new(
      teamname: "MyString",
      date: "MyString",
      schedulemin: "MyString",
      schedulemax: "MyString",
      sport: "MyString",
      people: "MyString"
    ))
  end

  it "renders new team form" do
    render

    assert_select "form[action=?][method=?]", teams_path, "post" do

      assert_select "input[name=?]", "team[teamname]"

      assert_select "input[name=?]", "team[date]"

      assert_select "input[name=?]", "team[schedulemin]"

      assert_select "input[name=?]", "team[schedulemax]"

      assert_select "input[name=?]", "team[sport]"

      assert_select "input[name=?]", "team[people]"
    end
  end
end
