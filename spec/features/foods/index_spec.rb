require "rails_helper"

describe "when on /foods" do
  before :each do
    visit root_path
    fill_in "q", with: "Sweet potatoes"
    click_on "Search"
  end

  it "should show the total number of items returned by the search" do
    expect(page).to have_content("531 items found.")
  end
end
