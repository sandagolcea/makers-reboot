class Player
  attr_reader :name, :board

  def initialize(name = 'Player1')
    @name = name
    @board = Board.new(10)
  end

  def place(ship)
    @board.place(ship)
  end
end
