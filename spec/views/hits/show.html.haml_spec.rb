require 'rails_helper'

RSpec.describe "hits/show", type: :view do
  before(:each) do
    @hit = assign(:hit, Hit.create!(
      :latitude => 1.5,
      :longitude => 1.5,
      :country => "Country",
      :ant => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(//)
  end
end
