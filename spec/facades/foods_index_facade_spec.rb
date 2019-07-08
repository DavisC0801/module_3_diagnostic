require "rails_helper"

describe FoodsIndexFacade do
  before :each do
    @test_facade = FoodsIndexFacade.new("Sweet potatoes")
  end
  it "returns a count of food items from service" do
    VCR.use_cassette("foods/food_index_facade") do
      expect(@test_facade.items_count).to eq(531)
    end
  end
end
