require_relative 'player'
require_relative 'board'

class Game
  attr_reader :current_player, :opponent
  def initialize(name1 = 'Player1', name2 = 'Player2')
    @player1 = Player.new(name1)
    @player2 = Player.new(name2)
    @current_player = @player1
    @opponent = @player2
  end

  def change_turn
    @opponent = @current_player
    @current_player = @current_player == @player1 ? @player2 : @player1
  end

  def all_ships_placed?(nr_of_required_ships = 4)
    @current_player.board.ships.size == nr_of_required_ships
  end

  def game_over?
    opponent.lost? && opponent.ship_nr > 0
  end
end
