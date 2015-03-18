require 'docking_station'

describe DockingStation do
  subject { DockingStation.new(capacity: 30) }

  it 'can have a specified capacity on creation' do
    expect(subject.capacity).to eq 30
  end
end
