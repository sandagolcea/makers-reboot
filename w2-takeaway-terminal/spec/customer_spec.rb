require 'customer'

describe Customer do
  let(:customer) { Customer.new('Sanda', '01234') }
  let(:tea) { double :dishes, name: 'tea', price: 5 }

  it 'has a name' do
    expect(customer.name).to eq 'Sanda'
  end

  it 'has a phone' do
    expect(customer.phone).to eq '01234'
  end

  it 'can order dishes' do
    customer.order_item(tea)
    expect(customer.order.items.size).to eq 1
  end

  it 'can see the total for his order' do
    customer.order_item(tea)
    expect(customer.order.total).to eq 5
  end

  it 'can pay the total' do
    customer.order_item(tea)
    customer.pay(customer.order.total)
    expect(customer.order).to be_payed
  end
  # xit 'can\'t order dishes that do not exist..see lasagna'
  # xit 'can cancel at item from an order'
  # xit 'can cancel the order'
end
