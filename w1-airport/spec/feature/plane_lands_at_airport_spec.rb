require 'capybara/rspec'
require 'airport'
require 'plane'

feature 'plane tries to land' do
  let(:airport) { Airport.new(20) }
  let(:plane) { Plane.new }

  scenario 'when the airport is empty' do
    allow(airport).to receive(:good_weather?).and_return(true)
    plane.land_at(airport)
    expect(airport.plane_count).to eq 1
    expect(plane).not_to be_flying
  end

  scenario 'when the airport is full' do
    allow(airport).to receive(:good_weather?).and_return(true)
    20.times { airport.dock(Plane.new) }
    expect(airport.dock(plane)).to eq false
    expect(plane).to be_flying
  end
end
