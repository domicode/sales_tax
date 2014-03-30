class Tax

attr_accessor :item

  def initialize(item)
    @item = item
  end

  def tax
     if @item == "book" or @item == "food" or @item == "medical" or @item == "pills"
      false
    else
      true
    end
  end

=begin
ecxluded: 
books, food, medical 
included:
all 

Tax = 10%
=end



end


tax_test = Tax.new("whatever")
tax_test.tax.inspect