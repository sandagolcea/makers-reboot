class Board
  DEFAULT_SIZE = 10
  attr_reader :size, :ships

  def initialize(size = DEFAULT_SIZE)
    @size = size
    @ships = []
  end

  def place(ship)
    return false unless can_place?(ship.coordinates)
    @ships << ship
  end

  private

  def can_place?(coords)
    coords.each { |x, y| return false if x > size - 1 || y > size - 1 }
    coords.each { |coord| ships.each { |s| return false if s.coordinates.include?(coord) } }
  end
end
