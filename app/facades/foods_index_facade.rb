class FoodsIndexFacade

  def initialize(query)
    @query = query
  end

  def items_count
    food_service.total_items
  end

  def foods
    food_service.foods_data.map do |food_attributes|
      Food.new(food_attributes)
    end
  end

  private

  def food_service
    FoodService.new(@query)
  end
end
