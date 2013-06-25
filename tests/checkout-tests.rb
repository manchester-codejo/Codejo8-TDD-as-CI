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

	def test_scan_two_items_total_is_correct_price
		item_a_sku = 'A'
		total_price = 100
		sku_price_map = {
			item_a_sku => 50
		}
		price_list = PriceList.new(sku_price_map)
		checkout = Checkout.new(self,price_list)
		checkout.scan(item_a_sku)
		checkout.scan(item_a_sku)
		checkout.total()

		assert_equal(total_price, @total)
	end

	def test_scan_one_of_all_items_total_is_239
		item_a_sku = 'A'
		item_b_sku = 'B'
		item_c_sku = 'C'
		item_d_sku = 'D'
		total_price = 239
		sku_price_map = { 
			item_a_sku=> 50,
			item_b_sku=> 30,
			item_c_sku => 60,
			item_d_sku => 99
		}
		price_list = PriceList.new(sku_price_map)
		checkout = Checkout.new(self,price_list)
		checkout.scan(item_a_sku)
		checkout.scan(item_b_sku)
		checkout.scan(item_c_sku)
		checkout.scan(item_d_sku)
		checkout.total()

		assert_equal(total_price, @total)
	end
	

	
	def show_total(total)
		@total = total.amount
	end
end



