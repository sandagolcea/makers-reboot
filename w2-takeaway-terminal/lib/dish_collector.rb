module DishCollector
  attr_reader :items

  def add(dish)
    dish.is_a?(Array) ? dish.each { |item| @items << item } : @items << dish
  end

  def remove(name)
    @items.delete(name)
  end
end
