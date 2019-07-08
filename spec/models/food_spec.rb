require "rails_helper"

describe Food do
  before :each do
    @test_food = Food.new({
      "group": "Branded Food Products Database",
      "name": "ONE POTATO TWO POTATO, PLAIN JAYNES, SWEET POTATO CHIPS, UPC: 785654000544",
      "ndbno": "45094945",
      "ds": "LI",
      "manu": "Dieffenbach's Potato Chips"
      })
  end

  it "exists" do
    expect(@test_food).to be_a(Food)
  end

  it "has attributes" do
    expect(@test_food.name).to eq("ONE POTATO TWO POTATO, PLAIN JAYNES, SWEET POTATO CHIPS, UPC: 785654000544")
    expect(@test_food.ndb_number).to eq("45094945")
  end
end
