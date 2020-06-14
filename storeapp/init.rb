require_relative "cart"
require_relative "order"
require_relative "real_item"
require_relative "virtual_item"

item1 = RealItem.new({:price => 100, :weight => 100, :name => "Car"})
item2 = VirtualItem.new({:price => 10, :name => "Car"})
item3 = RealItem.new({:weight => 100, :name => "Car"})

cart = Cart.new
cart.add_item item1
cart.add_item item2

order = Order.new
order.add_item item1
order.add_item item2
order.add_item item3

puts cart.items.size
puts order.items.size
puts order.count_valid_items