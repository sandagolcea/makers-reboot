require 'airport'
MAX_CAPACITY = 20
class Planes; def land; end; end

describe Airport do
  let(:airport) { Airport.new(MAX_CAPACITY) }
  let(:plane) { double(:plane) }

  before(:each) do
    allow(airport).to receive(:good_weather?).and_return(true)
  end

  it 'should have no planes to begin with' do
    expect(airport.plane_count).to eq 0
  end

  it 'should be able to dock a plane' do
    airport.dock(plane)
    expect(airport.plane_count).to eq 1
  end

  it 'should raise an error if it is full and can\'t dock a plane' do
    MAX_CAPACITY.times { airport.dock(Planes.new) }
    expect(airport.dock(plane)).to eq false
  end

  it 'can\'t dock the same plane twice' do
    airport.dock(plane)
    airport.dock(plane)
    expect(airport.plane_count).to eq 1
  end

  it 'can release a plane' do
    airport.dock(plane)
    airport.release(plane)
    expect(airport.plane_count).to eq 0
  end
end
