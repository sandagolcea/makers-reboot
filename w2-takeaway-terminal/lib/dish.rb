class Dish
  attr_reader :name, :price
  def initialize(name, price)
    @name = name
    @price = price
  end

  def update(name, price)
    @name = name
    @price = price
  end
end
