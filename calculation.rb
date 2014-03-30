require "./tax"


class Receipt

  attr_accessor :receipt_lines, :array, :price, :item, :price_tax, :price_duty;

  def initialize(receipt_lines)
    @receipt_lines = receipt_lines
  end

  def price
    @price = array.last.to_f #how to define that? Global variable? 
  end

  def item
    @item = @array[1]  # ?? 
  end

  def duty
    @array = @receipt_lines.split(" ")
    @price = array.last.to_f
    @price_duty = @price * 1.05
    puts @price_duty
    puts @price
    puts @price_duty - @price
  end

  def tax
    tax = Tax.new()
    #Call tax method and if true or false - how to do that? 
  end

  def invoice
    #execute duty
    #execute tax
    puts "Total price #{@price_duty}"
    puts "Test"
    puts @array
  end

end


receipt = Receipt.new
receipt.add("")
receipt.invoice
receipt.duty
receipt.tax
receipt.invoice