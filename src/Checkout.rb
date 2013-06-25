require_relative 'Money'

class PriceList
	PRICE_OF_A = 50
	def get_price(sku)
		if sku == 'A' 
			return PRICE_OF_A
		end
		30
	end
end

class Checkout
	def initialize(display, price_list)
		@display = display
		@price_list = price_list
	end

	def scan(sku)
		@total_price = @price_list.get_price(sku)
	end

	def total
		total = Money.new(amount: @total_price)
		@display.show_total(total)
	end
end