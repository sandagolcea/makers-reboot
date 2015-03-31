require 'restaurant'
require 'client'

describe Restaurant do
  let(:resto) { Restaurant.new }
  let(:client) { Client.new }
  let(:dish1) { double :dishes, name: 'sushi', price: 20 }
  let(:dish2) { double :dishes, name: 'noodles', price: '15' }

  it 'has a menu' do
    expect(resto.menu).not_to eq nil
  end

  it 'can add new dishes to the menu' do
    resto.add([dish1, dish2])
    expect(resto.menu.size).to eq 2
  end

  it 'knows if it has a dish' do
    resto.add([dish1, dish2])
    expect(resto.search('sushi')).to eq true
  end

  it 'knows if it does not have a dish' do
    resto.add([dish1, dish2])
    expect(resto.search('vodka')).to eq false
  end

  it 'can tell a client his total' do
    resto.add([dish1, dish2])
    client.order_item('lasagna')
    client.order_item('sushi')
    expect(resto.order_total(client)).to eq 20
  end
  xit 'can remove dishes from the menu'
end
