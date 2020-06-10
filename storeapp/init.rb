require_relative "cart"
require_relative "real_item"
require_relative "virtual_item"

item1 = RealItem.new({:price => 100, :weight => 100, :name => "Car"})
item2 = VirtualItem.new({:price => 10, :name => "Car"})

cart = Cart.new
cart.add_item item1
cart.add_item item2

puts item1.price
puts item1.real_price