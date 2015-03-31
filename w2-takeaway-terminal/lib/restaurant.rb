class Restaurant
  attr_reader :menu
  def initialize
    @menu = []
  end

  def add(dish)
    @menu << dish
  end
end
