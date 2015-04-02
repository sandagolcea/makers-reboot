class Board
  DEFAULT_SIZE = 10
  attr_reader :size, :ships, :hitlist, :misslist

  def initialize(size = DEFAULT_SIZE)
    @size = size
    @ships = []
    @hitlist = []
    @misslist = []
  end

  def place(ship)
    return false unless can_place?(ship.coordinates)
    @ships << ship
  end

  def accept_shot_at(location)
    return false unless valid?(location)
    ships.any? { |ship| ship.hit_at?(location) } ? @hitlist << location : @misslist << location
  end

  def all_ships_sunk?
    ships.all?(&:sunk?)
  end

  private

  def valid?(xy)
    xy[0] > size - 1 || xy[1] > size - 1 || xy.any? { |nr| nr < 0 } ? false : true
  end

  def can_place?(coords)
    coords.each { |coord| return false unless valid?(coord) }
    coords.each { |coord| ships.each { |s| return false if s.coordinates.include?(coord) } }
  end
end
