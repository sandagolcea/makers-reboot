require 'capybara/rspec'
feature 'player shoots at board' do
  let(:ship) { Ship.new(:destroyer, :A1, :horizontal) }
  let(:player1) { Player.new('Sanda') }
  let(:player2) { Player.new('Enemy') }

  scenario 'and hits' do
    player1.place(ship)
    player2.shoot_at([0, 0], player1.board)
    expect(player1.board.hitlist.size).to eq 1
  end

  scenario 'and misses' do
    player1.place(ship)
    player2.shoot_at([5, 6], player1.board)
    expect(player1.board.misslist.size).to eq 1
  end
end
# As a player
# So that I can destroy the enemy
# I would like to take hits at the enemy board
