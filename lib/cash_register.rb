class CashRegister
    attr_accessor :discount, :total, :previous_total, :item
    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @item = []
    end
    def add_item (title, price, quantity=1)
        self.previous_total = price*quantity
        self.total += self.previous_total
        quantity.times do @item << title end
    end
    def apply_discount
        percent_discount = (100.0 - @discount)/100
        if self.discount != 0
            self.total = (self.total * percent_discount).to_i
            "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
    end
    def items
        self.item
    end
    def void_last_transaction
        self.total -= self.previous_total
    end
end 


