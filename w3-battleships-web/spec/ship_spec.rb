require 'ship'

describe Ship do
  let(:ship) { Ship.new(:destroyer, :A1, :vertical) }
  let(:v_ship) { Ship.new(:destroyer, :A1, :vertical) }
  let(:h_ship) { Ship.new(:destroyer, :A1, :horizontal) }

  it 'should have a size' do
    expect(ship.size).not_to eq 0
  end

  it 'should not be sunk by default' do
    expect(ship).not_to be_sunk
  end

  it 'should have vertical coordinates as requested' do
    expect(v_ship.coordinates).to eq [[0, 0], [1, 0]]
  end

  it 'should have horizontal coordinates as requested' do
    expect(h_ship.coordinates).to eq [[0, 0], [0, 1]]
  end

  it 'should take a hit' do
    ship.hit_at?([0, 0])
    expect(ship.hitlist).to include([0, 0])
  end

  it 'should not take a hit if you missed it' do
    expect(ship).not_to be_hit_at([6, 5])
  end

  it 'should be sunk if all cells hit' do
    ship.hit_at?([0, 0])
    ship.hit_at?([1, 0])
    expect(ship).to be_sunk
  end
end
