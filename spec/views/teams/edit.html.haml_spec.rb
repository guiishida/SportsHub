require 'rails_helper'

RSpec.describe "teams/edit", type: :view do
  before(:each) do
    @team = assign(:team, Team.create!(
      teamname: "MyString",
      date: "MyString",
      schedulemin: "MyString",
      schedulemax: "MyString",
      sport: "MyString",
      people: "MyString"
    ))
  end

  it "renders the edit team form" do
    render

    assert_select "form[action=?][method=?]", team_path(@team), "post" do

      assert_select "input[name=?]", "team[teamname]"

      assert_select "input[name=?]", "team[date]"

      assert_select "input[name=?]", "team[schedulemin]"

      assert_select "input[name=?]", "team[schedulemax]"

      assert_select "input[name=?]", "team[sport]"

      assert_select "input[name=?]", "team[people]"
    end
  end
end
