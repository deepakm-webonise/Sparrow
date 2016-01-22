require 'rails_helper'

RSpec.describe "ants/edit", type: :view do
  before(:each) do
    @ant = assign(:ant, Ant.create!(
      :in_url => "MyString",
      :slug => "MyString",
      :clicks => 1,
      :snapshot => "MyString",
      :title => "MyString"
    ))
  end

  it "renders the edit ant form" do
    render

    assert_select "form[action=?][method=?]", ant_path(@ant), "post" do

      assert_select "input#ant_in_url[name=?]", "ant[in_url]"

      assert_select "input#ant_slug[name=?]", "ant[slug]"

      assert_select "input#ant_clicks[name=?]", "ant[clicks]"

      assert_select "input#ant_snapshot[name=?]", "ant[snapshot]"

      assert_select "input#ant_title[name=?]", "ant[title]"
    end
  end
end
