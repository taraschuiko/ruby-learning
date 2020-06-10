require_relative "item"
require_relative "cart"

item = Item.new({:price => 10, :weight => 100, :name => "Car"})
item.info { |attr| puts attr }