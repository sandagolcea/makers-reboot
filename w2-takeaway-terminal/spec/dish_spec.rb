require 'dish'

describe Dish do
  let(:dish) { Dish.new('lasagna', 20) }
  it 'has a name' do
    expect(dish.name).not_to eq nil
  end
  it 'has a price' do
    expect(dish.price).not_to eq nil
  end
end
