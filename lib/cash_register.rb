class CashRegister

  attr_accessor :total, :discount, :last_trans_amnt, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end


  def add_item(title,price,quantity = 1)
    if quantity>1
      i=0
      while i<quantity #loop through items
        @items << title
        i+=1
      end
    else
      @items << title
    end
    @total += price*quantity
    @last_trans_amnt = @total
    @total
  end

  def apply_discount()
    if @discount > 0
      @discount = @discount/100.to_f
      @total = @total - (@total * (@discount))
      "After a discount of: #{@discount}, the total is $#{@total.to_i}."
    else
      "No discount!"
    end
  end


  def void_last_transaction()
    @total -= @last_trans_amnt
  end

end

