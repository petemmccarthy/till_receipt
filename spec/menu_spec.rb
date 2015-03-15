require 'menu'

describe 'menu' do

  let (:menu) {Menu.new}
  
  it 'should read the prices from the json file' do
    expect(menu.price_list).to be_instance_of Hash
    expect(menu.price_list).not_to be_empty
  end

  it 'should be able to display an item' do
    expect(menu.price_list.keys).to include('Tea')
  end

  it 'should be able to display an items price' do
    expect(menu.price_list['Tea']).to eq 3.65
  end
  
end