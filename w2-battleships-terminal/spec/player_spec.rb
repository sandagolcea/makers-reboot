require 'player'

describe Player do
  let(:player) { Player.new('Sanda') }
  let(:ship) { Ship.new(:destroyer, :A1, :horizontal) }

  context 'at beginning of game' do
    it 'should have a name' do
      expect(player.name).to eq 'Sanda'
    end
    it 'should be able to place a ship on the board' do
      player.place(ship)
      expect(player.board.ships.size).to eq 1
    end
  end
end
