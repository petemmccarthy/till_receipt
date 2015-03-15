require 'menu'

describe 'menu' do
  
  it 'should display the price list from the json file' do
    menu = Menu.new
    expect(menu.price_list).to be_instance_of Hash
  end

end