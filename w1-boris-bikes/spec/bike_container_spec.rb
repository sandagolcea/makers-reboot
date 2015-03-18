require './lib/bike_container'

class Holder
  include BikeContainer
end

describe BikeContainer do
  let(:bike) { Bike.new }
  let(:holder) { Holder.new }

  it 'should accept a bike' do
    expect(holder.bikes.count).to eq 0
    holder.dock(:bike)
    expect(holder.bikes.count).to eq 1
  end

  it 'does not release bikes if empty' do
    expect { holder.release_bike } .to raise_error 'No bikes available'
  end

  it 'does not dock bikes when full' do
    20.times { holder.dock double :bike }
    expect { holder.dock double :bike } .to raise_error 'Station full'
  end

  it 'does not release broken bikes' do
    broken_bike = double :bike, broken?: true
    holder.dock broken_bike
    expect { holder.release_bike } .to raise_error 'No bikes available'
  end
end
