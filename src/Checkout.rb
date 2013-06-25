require_relative 'Money'

class Checkout
	def initialize(jimmy)
		jimmy.show_total(Money.new(amount: 50))
	end
	def scan(jimmy1)
	end
	def total
	end
end