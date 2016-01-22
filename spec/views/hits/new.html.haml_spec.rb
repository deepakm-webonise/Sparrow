require 'rails_helper'

RSpec.describe "hits/new", type: :view do
  before(:each) do
    assign(:hit, Hit.new(
      :latitude => 1.5,
      :longitude => 1.5,
      :country => "MyString",
      :ant => nil
    ))
  end

  it "renders new hit form" do
    render

    assert_select "form[action=?][method=?]", hits_path, "post" do

      assert_select "input#hit_latitude[name=?]", "hit[latitude]"

      assert_select "input#hit_longitude[name=?]", "hit[longitude]"

      assert_select "input#hit_country[name=?]", "hit[country]"

      assert_select "input#hit_ant_id[name=?]", "hit[ant_id]"
    end
  end
end
