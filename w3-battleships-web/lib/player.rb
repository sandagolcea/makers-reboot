require './lib/board'

class Player
  attr_reader :name, :board
  attr_accessor :ships

  def initialize(name = 'Player1')
    @name = name
    @board = Board.new(10)
    @ships = [:battleship, :cruiser, :destroyer, :submarine]
  end

  def place(ship)
    @board.place(ship)
  end

  def shoot_at(location, board)
    board.accept_shot_at(location)
  end

  def lost?
    board.all_ships_sunk?
  end

  def ship_nr
    board.ships.size
  end
end
