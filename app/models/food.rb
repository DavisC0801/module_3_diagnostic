class Food
  attr_reader :ndb_number, :name, :food_group, :data_source, :manufacturer

  def initialize(attributes)
    @ndb_number = attributes[:ndbno]
    @name = attributes[:name]
    @food_group = attributes[:group]
    if attributes[:ds] == "LI"
      @data_source = "Branded Food Products"
    else
      @data_source = "Standard Reference"
    end
    @manufacturer = attributes[:manu]
  end
end
