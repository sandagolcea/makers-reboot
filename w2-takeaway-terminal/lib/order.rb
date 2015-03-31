require_relative 'dish_collector'

class Order
  include DishCollector
  attr_reader :payed
  alias_method :payed?, :payed

  def initialize
    @items = []
    @payed = false
  end

  def total
    items.inject(0) { |sum, dish| sum + dish.price }
  end

  def accept_payment(amount)
    @payed = true if amount >= total && total > 0
  end
end
