class CheckoutFactory
	def self.create(display)
		NullCheckout.new(display)
	end
end