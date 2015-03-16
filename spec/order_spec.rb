require 'order'

describe 'order' do

  let (:new_order)  { Order.new }
  
  it 'is empty when created' do
    expect(new_order.items).to be_empty
  end

  it 'can add an item and a quantity' do
    new_order.add('Tea', 2)
    expect(new_order.items.first[:item]).to eq('Tea')
    expect(new_order.items.first[:quantity]).to eq (2)  
  end

  it 'can have multiple items and quantities' do
    new_order.add('Tea', 2)
    new_order.add('Cafe Latte', 3)
    expect(new_order.items.last[:item]).to eq('Cafe Latte')
    expect(new_order.items.last[:quantity]).to eq (3)
    expect(new_order.items.count).to eq (2)
  end

end