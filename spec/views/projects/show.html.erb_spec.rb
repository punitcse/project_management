require 'rails_helper'

RSpec.describe "projects/show", type: :view do
  before(:each) do
    assign(:project, Project.create!(name: 'test 2 name'))
  end

  it "renders attributes in <p>" do
    render
  end
end
