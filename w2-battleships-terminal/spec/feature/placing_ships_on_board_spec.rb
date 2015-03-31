require 'capybara/rspec'
feature 'player places ship' do
  scenario 'first ship on board' do
    ship = Ship.new(:destroyer, :A1, :horizontal)
    player = Player.new('Sanda')
    player.place(ship)
    expect(player.board.ships.size).to eq 1
  end
end
# As a player
# So that I can prepare for the game
# I would like to place a ship in a board location
