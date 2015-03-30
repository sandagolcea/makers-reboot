require 'ship'

describe Ship do
  let(:ship) { Ship.new(:destroyer, :A1, :horizontal) }
  let(:horizontal_ship) { Ship.new(:destroyer, :A1, :horizontal) }
  let(:vertical_ship) { Ship.new(:destroyer, :A1, :vertical) }

  it 'should have a size' do
    expect(ship.size).not_to eq 0
  end

  it 'should not be sunk by default' do
    expect(ship).not_to be_sunk
  end

  it 'should have horizontal coordinates as requested' do
    expect(horizontal_ship.coordinates).to eq [[0, 0], [1, 0]]
  end

  it 'should have vertical coordinates as requested' do
    expect(vertical_ship.coordinates).to eq [[0, 0], [0, 1]]
  end
end
