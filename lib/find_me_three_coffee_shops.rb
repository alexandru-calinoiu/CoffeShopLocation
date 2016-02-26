class FindMeThreeCoffeeShops
  attr :myx, :myy, :filename

  def initialize(myx, myy, filename)
    @myx = myx
    @myy = myy
    @filename = filename
  end

  def matches
    File.foreach(filename) do |line|
      p line
    end
  end
end