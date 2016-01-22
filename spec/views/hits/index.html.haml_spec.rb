require 'rails_helper'

RSpec.describe "hits/index", type: :view do
  before(:each) do
    assign(:hits, [
      Hit.create!(
        :latitude => 1.5,
        :longitude => 1.5,
        :country => "Country",
        :ant => nil
      ),
      Hit.create!(
        :latitude => 1.5,
        :longitude => 1.5,
        :country => "Country",
        :ant => nil
      )
    ])
  end

  it "renders a list of hits" do
    render
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
