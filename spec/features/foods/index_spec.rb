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

  it "should show a list of ten foods sorted by relevance." do
    within(".food-information") do
      expect(page).to have_content("NDB Number: 45094945")
      expect(page).to have_content("Name: ONE POTATO TWO POTATO, PLAIN JAYNES, SWEET POTATO CHIPS, UPC: 785654000544")
      expect(page).to have_content("Food Group: Branded Food Products Database")
      expect(page).to have_content("Data Source: Branded Food Products")
      expect(page).to have_content("Manufacturer: Dieffenbach's Potato Chips")

      expect(page).to have_content("NDB Number: 11516")
      expect(page).to have_content("Name: Sweet potato, frozen, unprepared (Includes foods for USDA's Food Distribution Program)")
      expect(page).to have_content("Food Group: Vegetables and Vegetable Products")
      expect(page).to have_content("Data Source: Standard Reference")
      expect(page).to have_content("Manufacturer: none")
    end
  end
end
