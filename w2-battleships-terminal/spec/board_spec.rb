require 'board'

describe Board do
  let(:board) { Board.new }
  let(:small_board) { Board.new(5) }
  let(:ship) { double :ships }

  context 'by default' do
    it 'should have a size of 10' do
      expect(board.size).to eq 10
    end
    it 'should have no ships positioned' do
      expect(board.ships).to eq []
    end
  end

  context 'at game setup' do
    it 'should accept positioning ships in a valid position' do
      allow(ship).to receive(:coordinates).and_return([[0, 0], [0, 1]])
      board.place(ship)
      expect(board.ships.size).to eq 1
    end
    it 'should not accept positioning ships outside the borders' do
      allow(ship).to receive(:coordinates).and_return([[0, 4], [0, 5]])
      small_board.place(ship)
      expect(small_board.ships.size).to eq 0
    end
    it 'should not accept a ship on top of another' do
      allow(ship).to receive(:coordinates).and_return([[0, 0], [0, 1]])
      board.place(ship)
      board.place(ship)
      expect(board.ships.size).to eq 1
    end
  end

  context 'during game play' do
  end
end
