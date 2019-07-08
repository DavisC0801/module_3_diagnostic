require "rails_helper"

describe FoodService do
  before :each do
    @test_service = FoodService.new("Sweet potatoes")
  end

  it "#total_items" do
    VCR.use_cassette("/foods/food_service", allow_playback_repeats: true) do
      expect(@test_service.total_items).to eq(531)
    end
  end

  it "#foods_data" do
    VCR.use_cassette("/foods/food_service", allow_playback_repeats: true) do
      expect(@test_service.foods_data.count).to eq(10)
      expect(@test_service.foods_data.first[:ds]).to eq("LI")
      expect(@test_service.foods_data.first[:ndbno]).to eq("45094945")
    end
  end
end
