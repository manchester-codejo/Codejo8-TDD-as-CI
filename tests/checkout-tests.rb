require 'test/unit'
require "../src/Checkout.rb"

class TestCheckout < Test::Unit::TestCase
	def test_scan_one_item_total_is_correct_price
		item_a_sku ='A'
		sku_price_map = {
			item_a_sku => 50
		}
		price_list = PriceList.new(sku_price_map)
		price_of_a = price_list.get_price(item_a_sku)
		checkout = Checkout.new(self,price_list)
		checkout.scan(item_a_sku)
		checkout.total()
		assert_equal(sku_price_map[item_a_sku], @total)
	end

	
	def show_total(total)
		@total = total.amount
	end
end



