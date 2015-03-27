require 'docking_station'
require 'capybara/rspec'

feature 'Public person accesses bike' do
  let(:docking_station) { DockingStation.new }
  scenario 'docking station releases a bike that is not broken' do
    docking_station.dock Bike.new
    bike = docking_station.release_bike
    expect(bike).not_to be_broken
  end
  scenario 'docking station cannot release bike if empty' do
    expect { docking_station.release_bike } .to raise_error 'No bikes available'
  end
  scenario 'docking station does not release broken bikes' do
    bike = Bike.new
    bike.break
    docking_station.dock bike
    expect { docking_station.release_bike } .to raise_error 'No bikes available'
  end
end

feature 'Public person docks bike' do
  scenario 'can not dock in a station that is full' do
    docking_station = DockingStation.new
    20.times { docking_station.dock double :bike }
    expect { docking_station.dock double :bike } .to raise_error 'Station full'
  end
end

feature 'Maintainer comes for bikes' do
  let(:docking_station) { DockingStation.new }
  xscenario 'van can get broken bikes from the station' do
    bike = Bike.new
    bike.break
    docking_station.dock bike
    expect(docking_station.bikes.count).to eq 1
    van.move_bikes_from(docking_station)
    expect(docking_station.bikes.count).to eq 0
  end
end

# As a maintainer of the system,
# So that members of the public can get usable bikes,
# I'd like vans to come to take broken bikes from docking stations,
# take them to be fixed and then bring them back to the docking stations.

# As a system maintainer,
# So that busy areas can be served more effectively,
# I want to be able to specify a larger capacity when necessary.

# As a maintainer of the system,
# So that members of the public can get usable bikes,
# I'd like docking stations to only release working bikes.

# As a maintainer of the system,
# So that members of the public can get usable bikes,
# I'd like docking stations to accept returning bikes (broken or not).
