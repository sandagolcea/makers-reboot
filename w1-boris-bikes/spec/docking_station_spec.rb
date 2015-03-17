require 'docking_station'

describe DockingStation do
  it 'can dock a bike' do
    expect(subject.dock :bike).to eq [:bike]
  end

  it 'does not release bikes if empty' do
    expect { subject.release_bike } .to raise_error 'No bikes available'
  end

  it 'does not dock bikes when full' do
    20.times { subject.dock double :bike }
    expect { subject.dock double :bike } .to raise_error 'Station full'
  end

  it 'does not release broken bikes' do
    broken_bike = double :bike, broken?: true
    subject.dock broken_bike
    expect { subject.release_bike } .to raise_error 'No bikes available'
  end
end
