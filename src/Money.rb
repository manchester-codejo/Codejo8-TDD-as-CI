class Money 
	attr_reader :amount

	def initialize(parameters)
		@amount = parameters[:amount]
	end
end