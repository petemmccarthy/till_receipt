require 'json'

class Menu

  def price_list
    file = File.read('hipstercoffee.json')
    @price_list = JSON.parse(file).first['prices'].first
  end

  def display_price_list
    price_list.each { |item, price| puts "#{item}: #{price}" }.to_s
  end

end