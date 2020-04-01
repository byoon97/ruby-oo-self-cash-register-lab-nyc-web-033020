class CashRegister

  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    quantity.times do
      @cart << title
    end
  end

  def apply_discount
    if @discount != 0
      self.total -= self.total * @discount / 100
    else
      "There is no discount to apply."
    end
  end
end
