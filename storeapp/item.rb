class Item

  @@discount = 0.1

  def initialize(options = {})
    @real_price = options[:price]
    @name = options[:name]
  end

  attr_reader :real_price, :name
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
    (@real_price - @real_price * self.class.discount) + tax
  end

  private
    def tax
      type_tax = if self.class == VirtualItem
        1
      else
        2
      end

      cost_tax = if @real_price > 5
        @real_price * 0.2
      else
        @real_price * 0.1
      end

      type_tax + cost_tax
    end
  
end