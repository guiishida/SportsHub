require 'rails_helper'

RSpec.describe "sports/index", type: :view do
  before(:each) do
    assign(:sports, [
      Sport.create!(
        code: 1,
        name: "Cricket"
      ),
      Sport.create!(
        code: 2,
        name: "Hockey"
      )
    ])
  end

  it "renders a list of sports" do
    render
    expect(response).to match('code\":2')
  end
end
