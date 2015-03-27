require 'garage'

describe Garage do
  subject { described_class.new(capacity: 30) }
  let(:bike) { Bike.new }
  it 'can accept bikes for reparations' do
    subject.accept(bike)
    expect(subject.bikes.count).to eq 1
  end
  it 'releases repaired bikes' do
    subject.accept(bike)
    expect(subject.release_bike).not_to be_broken
  end
end
