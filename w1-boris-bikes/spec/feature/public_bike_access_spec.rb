require 'docking_station'
require 'capybara/rspec'

feature 'member of public accesses bike' do
  scenario 'docking station releases a bike that is not broken' do
    docking_station = DockingStation.new
    docking_station.dock Bike.new
    bike = docking_station.release_bike
    expect(bike).not_to be_broken
  end
  scenario 'docking station cannot release bike if empty' do
    docking_station = DockingStation.new
    expect { docking_station.release_bike } .to raise_error 'No bikes available'
  end
end
