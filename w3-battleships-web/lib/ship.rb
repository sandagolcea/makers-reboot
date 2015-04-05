class Ship
  SHIPS = { battleship: 4, cruiser: 3, destroyer: 2, submarine: 1 }
  attr_reader :size, :start, :coordinates, :hitlist

  def initialize(ship_type, start_point, direction)
    @size = SHIPS[ship_type]
    @coordinates = []
    @hitlist = []
    calculate_coords(start_point, direction)
  end

  def sunk?
    coordinates.length == hitlist.length
  end

  def calculate_coords(start, direction)
    x, y = translate_x(start), translate_y(start)
    size.times do
      @coordinates << [x, y]
      direction == :horizontal ? y = y.next : x = x.next
    end
  end

  def hit_at?(location)
    @coordinates.include?(location) ? @hitlist << location : false
  end

  private

  def translate_x(start)
    start.to_s.split(//).first.ord - 65
  end

  def translate_y(start)
    start.to_s[1..-1].to_i - 1
  end
end
