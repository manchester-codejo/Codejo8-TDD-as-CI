class NullCheckout

	def initialize(display)
		@display = display
	end

	def scan(sku)
	end

	def total
		@display.show_total(Money.new(amount: 0))
	end
end