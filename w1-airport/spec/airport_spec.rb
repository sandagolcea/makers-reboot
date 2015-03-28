require 'airport'
MAX_CAPACITY = 20

describe Airport do
  let(:airport) { Airport.new(MAX_CAPACITY) }
  let(:plane) { double(:plane) }
  it 'should have no planes to begin with' do
    expect(airport.plane_count).to eq 0
  end
  it 'should be able to dock a plane' do
    allow(plane).to receive(:land)
    airport.dock(plane)
    expect(airport.plane_count).to eq 1
  end
  it 'should raise an error if it can\'t dock a plane' do
    allow(plane).to receive(:land)
    20.times { airport.dock(plane) }
    expect { airport.dock(plane) }.to raise_error 'Airport is full'
  end
end
