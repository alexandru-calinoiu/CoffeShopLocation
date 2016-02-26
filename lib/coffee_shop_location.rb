require 'bigdecimal'

class CoffeeShopLocation
  attr_reader :name, :location_x, :location_y

  def self.build(line)
    CoffeeShopLocation.new(*line.split(','))
  end

  def initialize(name = nil, location_x = nil, location_y = nil)
    @name = name
    @location_x = BigDecimal.new(location_x) if location_x
    @location_y = BigDecimal.new(location_y) if location_y
  end

  def valid?
    !(name.nil? || location_x.nil? || location_y.nil?)
  end
end