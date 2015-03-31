class Restaurant
  attr_reader :menu
  def initialize
    @menu = []
  end

  def add(dish)
    dish.is_a?(Array) ? dish.each { |item| @menu << item } : @menu << dish
  end

  def search(name)
    @menu.any? { |dish| dish.name == name }
  end

  def get_dish_price(name)
    @menu.each { |dish| return dish.price if dish.name == name }
  end

  def order_total(client)
    total = 0
    client.order.each { |dish_name| total += get_dish_price(dish_name) if search(dish_name) }
    total
  end
end
