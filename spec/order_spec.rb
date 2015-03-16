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

end