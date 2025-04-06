require 'rails_helper'

RSpec.describe "projects/index", type: :view do
  before(:each) do
    assign(:projects, [
      Project.create!(name: 'test name'),
      Project.create!(name: 'test name2')
    ])
  end

  it "renders a list of projects" do
    render
    cell_selector = 'div>p'
  end
end
