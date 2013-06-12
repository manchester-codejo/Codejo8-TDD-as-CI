class TotalViewStore 
	def initialize
		@total_model = {total: 0}
	end

	def display_total(money)
		@total_model[:total] = money.amount
	end

	def get_total
		@total_model
	end
end