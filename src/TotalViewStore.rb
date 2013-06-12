class TotalViewStore 
	def initialize
		@total_model = {total: 0}
	end

	def show_total(money)
		@total_model[:total] = money.amount
	end

	def get_model
		@total_model
	end
end