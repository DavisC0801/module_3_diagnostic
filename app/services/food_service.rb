class FoodService

  def initialize(query)
    @query = query.downcase.sub(" ", "%20")
  end

  def connection
    Faraday.new(url: "https://api.nal.usda.gov/ndb/search/")
  end

  def total_items
    connection.get("?format=json&q=#{@query}&sort=r&max=10&offset=0&api_key=#{ENV["DATA_API_KEY"]}")
    response = JSON.parse(connection.body, symbolize_names: true)
    require 'pry'; binding.pry
  end
end
