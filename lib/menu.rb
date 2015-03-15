require 'json'

class Menu

  def price_list
    file = File.read('hipstercoffee.json')
    @price_list = JSON.parse(file).first['prices'].first
  end

end