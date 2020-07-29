require 'rails_helper'

RSpec.describe "facilities/index", type: :view do
  before(:each) do
    assign(:facilities, [
      Facility.create!(
        name: "Central Court",
        mode: "Outdoor",
        sport: Sport.create!(
          code: 1,
          name: "Tennis"
        )
      ),
      Facility.create!(
        name: "Maracana",
        mode: "Outdoor",
        sport: Sport.create!(
          code: 2,
          name: "Football"
        )
      )
    ])
  end

  it "renders a list of facilities" do
    render
    expect(response).to match('name\":\"Maracana\"')
  end
end
