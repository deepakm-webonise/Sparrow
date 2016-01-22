require 'rails_helper'

RSpec.describe "ants/show", type: :view do
  before(:each) do
    @ant = assign(:ant, Ant.create!(
      :in_url => "In Url",
      :slug => "Slug",
      :clicks => 1,
      :snapshot => "Snapshot",
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/In Url/)
    expect(rendered).to match(/Slug/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Snapshot/)
    expect(rendered).to match(/Title/)
  end
end
