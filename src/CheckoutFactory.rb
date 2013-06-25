
class CheckoutFactory
	
	SKU_PRICE_MAP = {
		'A'=> 50,
		'B'=> 30
	}
	def self.create(display)
		Checkout.new(display,PriceList.new(SKU_PRICE_MAP))
	end
end