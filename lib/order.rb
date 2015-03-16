class Order

attr_reader :items

  def initialize
    @items = []
  end

  def add(item, quantity)
    items.push({item: item, quantity: quantity})
  end

end