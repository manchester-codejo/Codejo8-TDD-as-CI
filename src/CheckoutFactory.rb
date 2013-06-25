
class CheckoutFactory
	def self.create(display)
		Checkout.new(display,PriceList.new)
	end
end