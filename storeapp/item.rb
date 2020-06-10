class Item

  @@discount = 0.1

  def initialize(options = {})
    @price = options[:price]
    @name = options[:name]
  end

  attr_reader :name
  attr_writer :price

  def info
    yield(price)
    yield(name)
  end

  def self.discount
    if Time.now.month == 6
      @@discount + 0.2
    else
      @@discount
    end
  end

  def price
    @price - @price * self.class.discount
  end
  
end