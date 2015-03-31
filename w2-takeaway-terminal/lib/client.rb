class Client
  attr_reader :name, :phone, :order
  def initialize(name = 'unknown', phone = '1234')
    @name = name
    @phone = phone
    @order = []
  end

  def order_item(dish_name)
    @order << dish_name
  end
end
