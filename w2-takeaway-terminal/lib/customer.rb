class Customer
  attr_reader :name, :phone, :order
  def initialize(name = 'unknown', phone = '1234')
    @name = name
    @phone = phone
    @order = Order.new
  end

  def order_item(dish_name)
    @order.add(dish_name)
  end

  def pay(amount)
    @order.accept_payment(amount)
  end
end
