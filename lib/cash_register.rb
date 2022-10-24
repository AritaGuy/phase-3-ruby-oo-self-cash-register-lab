class CashRegister

    attr_accessor :discount, :total, :items, :price, :amount
  
    def initialize(discount= 0)
      @discount = discount
      @total = 0
      @items = []
    end
  
    def add_item(item, price, amount=1)
      # binding.pry
      @price = price
      @amount = amount
      @item = item
      self.total += price * amount
      amount.times do
      self.items << item
      end
    end
  
    def apply_discount
      
      if @discount != 0 && total 
        self.total = (self.total * ((100.0 - discount.to_f)/100)).to_i
        "After the discount, the total comes to $#{self.total}."
      else
        "There is no discount to apply."
      end
    end

    def void_last_transaction
      self.total -= self.price * self.amount
    end
  end
