require_relative 'dish_collector'

class Menu
  include DishCollector

  def initialize
    @items = []
  end

  def search(name)
    @items.any? { |item| item.name == name }
  end

  def remove(name)
    @items.delete(name)
  end
end
