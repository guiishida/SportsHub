require 'rails_helper'

RSpec.describe "sports/index", type: :view do
  before(:each) do
    assign(:sports, [
      Sport.create!(
        code: 2,
        name: "Name"
      ),
      Sport.create!(
        code: 2,
        name: "Name"
      )
    ])
  end

  it "renders a list of sports" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Name".to_s, count: 2
  end
end
