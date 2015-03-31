require 'capybara/rspec'
require 'game'
require 'player'
require 'board'
require 'ship'

feature 'game' do
  let(:ship) { Ship.new(:destroyer, :A1, :horizontal) }
  let(:game) { Game.new }

  before :each do
    game.current_player.place(ship)
  end

  scenario 'should let the current_player put his first ship' do
    expect(game.current_player.board.ships.size).to eq 1
  end

  scenario 'should know if a player still has ships to place' do
    expect(game.all_ships_placed?).to eq false
  end

  scenario 'should let players take turns' do
    previous_player = game.current_player
    game.change_turn
    expect(previous_player).not_to eq game.current_player
  end

  scenario 'should know when it\'s over' do
    game.change_turn
    game.current_player.shoot_at([0, 0], game.opponent.board)
    game.current_player.shoot_at([1, 0], game.opponent.board)
    expect(game).to be_game_over
  end
end
