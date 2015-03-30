class Ship
  SHIPS = { battleship: 4, destroyer: 2 }
  attr_reader :size, :start, :coordinates

  def initialize(ship_type, start_point, direction)
    @size = SHIPS[ship_type]
    @coordinates = []
    @status = :floating
    calculate_coords(start_point, direction)
  end

  def sunk?
    :sunk == @status
  end

  def calculate_coords(start, direction)
    x, y = translate_x(start), translate_y(start)
    size.times do
      @coordinates << [x, y]
      direction == :horizontal ? x = x.next : y = y.next
    end
  end

  private

  def translate_x(start)
    start.to_s.split(//).first.ord - 65
  end

  def translate_y(start)
    start.to_s[1..-1].to_i - 1
  end
end
