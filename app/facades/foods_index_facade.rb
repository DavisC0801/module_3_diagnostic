class FoodsIndexFacade

  def initialize(query)
    @query = query
  end

  def items_count
    food_service.total_items
  end

  private

  def food_service
    FoodService.new(@query)
  end
end
