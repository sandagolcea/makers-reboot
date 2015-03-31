require 'menu'

describe Menu do
  let(:menu) { Menu.new }
  let(:dish1) { double :dishes, name: 'sushi', price: 20 }
  let(:dish2) { double :dishes, name: 'noodles', price: '15' }

  before(:each) do
    menu.add([dish1, dish2])
  end
  # TODO: add/remove dish to DishCollector testing
  it 'can get new dishes' do
    expect(menu.items.size).to eq 2
  end

  it 'can remove dishes' do
    menu.remove(dish1)
    expect(menu.items.size).to eq 1
  end

  it 'knows if it has a dish' do
    expect(menu.search('sushi')).to eq true
  end

  it 'knows if it does not have a dish' do
    expect(menu.search('vodka')).to eq false
  end
end
