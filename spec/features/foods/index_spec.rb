require "rails_helper"

describe "when on /foods" do
  before :each do
    visit root_path
    fill_in "q", with: "Sweet potatoes"
  end

  it "should show the total number of items returned by the search" do
    VCR.use_cassette("foods/index") do
      click_on "Search"
      
      expect(page).to have_content("531 items found.")
    end
  end
end
