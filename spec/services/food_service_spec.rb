require "rails_helper"

describe FoodService do
  before :each do
    @test_service = FoodService.new("Sweet potatoes")
  end
  it "#total_items" do
    VCR.use_cassette("/foods/food_service") do
      expect(@test_service.total_items).to eq(531)
    end
  end
end
