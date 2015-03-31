require 'order'

describe Order do
  let(:order) { Order.new }
  let(:sushi) { double :dishes, name: 'sushi', price: 20 }
  let(:tea) { double :dishes, name: 'tea', price: 5 }

  it 'should have an initial total equal to zero' do
    expect(order.total).to eq 0
  end

  it 'can have items added to it' do
    order.add(sushi)
    expect(order.items.size).to eq 1
  end

  it 'can calculate total after adding dishes' do
    order.add(sushi)
    expect(order.total).to eq 20
  end

  it 'accepts payment if amount is correct' do
    order.add(tea)
    order.accept_payment(order.total)
    expect(order).to be_payed
  end

  it 'does not accept payment if lower than total' do
    order.add(tea)
    order.accept_payment(order.total - 1)
    expect(order).not_to be_payed
  end
end
