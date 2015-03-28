require 'capybara/rspec'
require 'airport'
require 'plane'

feature 'plane taking off' do
  let(:airport) { Airport.new(20) }
  let(:plane) { Plane.new }

  scenario 'when the weather is good' do
    allow(airport).to receive(:good_weather?).and_return(true)
    plane.land_at(airport)
    plane.take_off_from(airport)
    expect(airport.plane_count).to eq 0
    expect(plane).to be_flying
  end

  scenario 'when the weather is bad' do
    allow(airport).to receive(:good_weather?).and_return(true)
    plane.land_at(airport)
    allow(airport).to receive(:good_weather?).and_return(false)
    plane.take_off_from(airport)
    expect(airport.plane_count).to eq 1
    expect(plane).not_to be_flying
  end
end
