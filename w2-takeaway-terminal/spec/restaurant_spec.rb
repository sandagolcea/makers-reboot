require 'restaurant'

describe Restaurant do
  let(:resto) { Restaurant.new }
  let(:dish) { double :dishes, name: 'sushi', price: '20' }
  it 'has a menu' do
    expect(resto.menu).not_to eq nil
  end
  it 'can add new dishes to the menu' do
    resto.add(dish)
    expect(resto.menu.size).to eq 1
  end
end
