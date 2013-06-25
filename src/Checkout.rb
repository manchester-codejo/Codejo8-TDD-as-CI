require_relative 'Money'

class PriceList
	SKU_PRICE_MAP = {
		'A'=> 50,
		'B'=> 30
	}
	def get_price(sku)
		SKU_PRICE_MAP[sku]
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