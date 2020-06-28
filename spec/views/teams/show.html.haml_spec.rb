require 'rails_helper'

RSpec.describe "teams/show", type: :view do
  before(:each) do
    @team = assign(:team, Team.create!(
      teamname: "Teamname",
      date: "Date",
      schedulemin: "Schedulemin",
      schedulemax: "Schedulemax",
      sport: "Sport",
      people: "People"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Teamname/)
    expect(rendered).to match(/Date/)
    expect(rendered).to match(/Schedulemin/)
    expect(rendered).to match(/Schedulemax/)
    expect(rendered).to match(/Sport/)
    expect(rendered).to match(/People/)
  end
end
