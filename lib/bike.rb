class Bike

	def initialize
		@status = true
		
	end
	def working?
		@status
	end
	def broken
		@status = false
	end

end