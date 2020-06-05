class Item

  def initialize(options)
    @price = options[:price]
    @weight = options[:weight]
  end

  attr_reader :price, :weight
  attr_writer :price
  
end

item1 = Item.new({:price => 30, :weight => 10})
puts item1.price
puts item1.weight