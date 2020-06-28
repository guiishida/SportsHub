require 'rails_helper'

RSpec.describe "teams/index", type: :view do
  before(:each) do
    assign(:teams, [
      Team.create!(
        teamname: "Teamname",
        date: "Date",
        schedulemin: "Schedulemin",
        schedulemax: "Schedulemax",
        sport: "Sport",
        people: "People"
      ),
      Team.create!(
        teamname: "Teamname",
        date: "Date",
        schedulemin: "Schedulemin",
        schedulemax: "Schedulemax",
        sport: "Sport",
        people: "People"
      )
    ])
  end

  it "renders a list of teams" do
    render
    assert_select "tr>td", text: "Teamname".to_s, count: 2
    assert_select "tr>td", text: "Date".to_s, count: 2
    assert_select "tr>td", text: "Schedulemin".to_s, count: 2
    assert_select "tr>td", text: "Schedulemax".to_s, count: 2
    assert_select "tr>td", text: "Sport".to_s, count: 2
    assert_select "tr>td", text: "People".to_s, count: 2
  end
end
