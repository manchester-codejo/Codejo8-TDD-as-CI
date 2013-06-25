require 'test/unit'

class TestCheckout < Test::Unit::TestCase
	def test_jimmy
		assert_equal(true, true);
	end

	def test_scan_one_A_total_is_50
		checkout = Checkout.new(self)
		checkout.scan('A')
		checkout.total()
		assert_equal(50, @total)
	end

	def show_total(total)
		@total = total.amount
	end
end

