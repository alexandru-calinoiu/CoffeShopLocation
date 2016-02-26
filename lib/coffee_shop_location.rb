require 'bigdecimal'

class CoffeeShopLocation
  attr_reader :name, :x, :y

  def self.build(line)
    CoffeeShopLocation.new(*line.split(','))
  end

  def initialize(name = nil, location_x = nil, location_y = nil)
    @name = name
    @x = BigDecimal.new(location_x) if location_x
    @y = BigDecimal.new(location_y) if location_y
  end

  def valid?
    !(name.nil? || x.nil? || y.nil?)
  end
end