require 'rails_helper'

RSpec.describe "sports/show", type: :view do
  before(:each) do
    @sport = assign(:sport, Sport.create!(
      code: 2,
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Name/)
  end
end
