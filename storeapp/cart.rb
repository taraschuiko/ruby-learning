require_relative "string"
require_relative "item_container"
require_relative "real_item"
require_relative "virtual_item"

class Cart

  attr_reader :items

  include ItemContainer
  class ItemNotSupported < StandardError; end

  def initialize(owner)
    @items = []
    @owner = owner
  end

  def save_to_file
    File.open("#{@owner}_cart.txt", "w") do |f|
      @items.each do |i|
        raise ItemNotSupported if i.class == VirtualItem
        f.puts i
      end
    end
  end

  def read_from_file
    File.readlines("#{@owner}_cart.txt").each { |i| @items << i.to_real_item }
    @items.uniq!
  rescue Errno::ENOENT
    File.open("#{@owner}_cart.txt") {}
    puts "File #{@owner}_cart.txt created"
  end

end