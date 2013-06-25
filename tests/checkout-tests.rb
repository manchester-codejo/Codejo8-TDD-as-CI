require 'test/unit'
require "../src/Checkout.rb"

class TestCheckout < Test::Unit::TestCase
	def test_scan_one_A_total_is_50
		item_a_sku ='A'
		price_list = PriceList.new
		price_of_a = price_list.get_price(item_a_sku)
		checkout = Checkout.new(self,price_list)
		checkout.scan(item_a_sku)
		checkout.total()
		assert_equal(price_of_a, @total)
	end

	# def test_

	def show_total(total)
		@total = total.amount
	end
end



