require 'rails_helper'

RSpec.describe "ants/index", type: :view do
  before(:each) do
    assign(:ants, [
      Ant.create!(
        :in_url => "In Url",
        :slug => "Slug",
        :clicks => 1,
        :snapshot => "Snapshot",
        :title => "Title"
      ),
      Ant.create!(
        :in_url => "In Url",
        :slug => "Slug",
        :clicks => 1,
        :snapshot => "Snapshot",
        :title => "Title"
      )
    ])
  end

  it "renders a list of ants" do
    render
    assert_select "tr>td", :text => "In Url".to_s, :count => 2
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Snapshot".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
