require 'client'

describe Client do
  let(:client) { Client.new('Sanda', '01234') }

  it 'has a name' do
    expect(client.name).to eq 'Sanda'
  end

  it 'has a phone' do
    expect(client.phone).to eq '01234'
  end

  it 'can order dishes' do
    client.order_item('lasagna')
    expect(client.order.size).to eq 1
  end

  xit 'can pay the total'
  xit 'can cancel at item from an order'
  xit 'can cancel the order'
end
