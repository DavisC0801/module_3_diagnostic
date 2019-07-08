require "rails_helper"

describe "welcome page" do
  describe "as a user, when I visit /" do
    describe "and I fill in the search form with sweet potatoes" do
      it "should take me to the /foods path when clicking search" do
        VCR.use_cassette("foods/welcome") do
            
          visit root_path

          click_on "Search"

          expect(current_path).to eq(foods_path)
        end
      end
    end
  end
end
