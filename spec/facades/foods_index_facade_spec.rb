require "rails_helper"

describe FoodsIndexFacade do
  before :each do
    @test_facade = FoodsIndexFacade.new("Sweet potatoes")
  end
  it "returns a count of food items from service" do
    expect(@test_facade.items_count).to eq(531)
  end
end
