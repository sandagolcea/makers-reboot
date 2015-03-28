require 'capybara/rspec'
require 'airport'
require 'plane'

feature 'plane tries to land' do
  let(:airport) { Airport.new(20) }
  let(:plane) { Plane.new }
  scenario 'when the airport is empty' do
    airport.dock(plane)
    expect(airport.plane_count).to eq 1
    expect(plane).not_to be_flying
  end
  scenario 'when the airport is full' do
    20.times { airport.dock(Plane.new) }
    expect { airport.dock(plane) }.to raise_error
    expect(plane).to be_flying
  end
end
