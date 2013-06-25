require_relative 'Money'

class PriceList

	def initialize(sku_price_map)
		@sku_price_map = sku_price_map
	end

	def get_price(sku)
		@sku_price_map[sku]
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