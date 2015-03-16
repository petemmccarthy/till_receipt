
describe 'receipt' do
  
  it 'should display the shop info from the json file' do
    expect(receipt.shop_details).to be_instance_of Hash
    expect(receipt.shop_details).not_to be_empty
  end

end