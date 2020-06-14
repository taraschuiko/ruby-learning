require_relative "cart"
require_relative "order"
require_relative "real_item"
require_relative "virtual_item"

@items = []
@items << RealItem.new({:price => 110, :weight => 100, :name => "car"})
@items << RealItem.new({:price => 10, :name => "kettle"})
@items << RealItem.new({:price => 200, :weight => 200, :name => "bed"})
