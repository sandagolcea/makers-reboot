require 'plane'

describe Plane do
  let(:plane) { Plane.new }
  it 'can land' do
    plane.land
    expect(plane).not_to be_flying
  end
  it 'can take off' do
    plane.land
    plane.take_off
    expect(plane).to be_flying
  end
  it 'can\'t take off if already flying' do
    expect { plane.take_off }.to raise_error 'Plane is already flying'
  end
  it 'can\'t land if already landed' do
    plane.land
    expect { plane.land }.to raise_error 'Plane has already landed'
  end
end
