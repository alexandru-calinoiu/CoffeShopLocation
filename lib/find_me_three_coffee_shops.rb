require_relative 'coffee_shop_location'

class FindMeThreeCoffeeShops
  attr :myx, :myy, :filename

  def initialize(myx, myy, filename)
    @myx = BigDecimal.new(myx)
    @myy = BigDecimal.new(myy)
    @filename = filename
  end

  def matches
    result = { }

    File.foreach(filename)
      .map { |line| CoffeeShopLocation.build(line) }
      .select { |location| location.valid? }.each do |location|

      distance_to_location = distance_to_location(location).round(4)

      location_to_eliminate = location.name
      distance_to_location_to_eliminate = distance_to_location

      result.each do |location_name, value|
        if value > distance_to_location_to_eliminate
          distance_to_location_to_eliminate = value
          location_to_eliminate = location_name
        end
      end

      if location_to_eliminate != location.name
        result.delete(location_to_eliminate)
        result[location.name] = distance_to_location
      elsif result.length < 3
        result[location.name] = distance_to_location
      end
    end

    result.sort_by { |_, distance| distance }.map { |array| array.join(',') }
  end

  private

  def distance_to_location(location)
    Math.sqrt((myx - location.x)**2 + (myy - location.y)**2)
  end
end