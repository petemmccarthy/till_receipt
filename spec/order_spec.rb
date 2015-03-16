require 'order'

describe 'order' do
  
  it 'is empty when created' do
    order = Order.new
    expect(order.items).to be_empty
  end

end