require 'bigdecimal'

class CoffeeShopLocation
  attr_reader :name, :location_x, :location_y

  def self.build(line)
    CoffeeShopLocation.new(*line.split(','))
  end

  def initialize(name, location_x, location_y)
    @name = name
    @location_x = BigDecimal.new(location_x)
    @location_y = BigDecimal.new(location_y)
  end

  def valid?
    true
  end
end