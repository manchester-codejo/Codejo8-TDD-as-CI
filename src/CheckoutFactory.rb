
class CheckoutFactory
	SKU_PRICE_MAP = {
		'A'=> 50,
		'B'=> 30,
		'C' => 60,
		'D' => 99
	}
	def self.create(display)
		Checkout.new(display,PriceList.new(SKU_PRICE_MAP))
	end
end