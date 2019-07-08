require "rails_helper"

describe FoodsIndexFacade do
  before :each do
    @test_facade = FoodsIndexFacade.new("Sweet potatoes")
  end
  it "returns a count of food items from service" do
    VCR.use_cassette("foods/food_index_facade", allow_playback_repeats: true) do
      expect(@test_facade.items_count).to eq(531)
    end
  end
  it "returns a list of food items from service" do
    VCR.use_cassette("foods/food_index_facade", allow_playback_repeats: true) do
      expect(@test_facade.foods.count).to eq(10)
      expect(@test_facade.foods.first.ndb_number).to eq("45094945")
      expect(@test_facade.foods.last.ndb_number).to eq("11516")
    end
  end
end
