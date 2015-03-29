require 'capybara/rspec'
require 'airport'
require 'plane'
CAPACITY = 5

feature 'Grand finale' do
  let(:airport) { Airport.new(CAPACITY) }

  scenario 'landing planes to fill airport and taking off' do
    planes = []
    CAPACITY.times { planes << Plane.new }
    # land all planes
    planes.each { |plane| plane.land_at(airport) while plane.flying? }
    expect(airport.plane_count).to eq CAPACITY
    # all planes take off
    planes.each do |plane|
      plane.take_off_from(airport) until plane.flying?
    end
    expect(airport.plane_count).to eq 0
  end
end
