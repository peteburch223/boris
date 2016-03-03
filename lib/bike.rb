class Bike

	def initialize
		@status = true
	end

	def working?
		status
	end

	def working=(value)
		status = value
	end

	 private
	 attr_reader :status

	# def status
	# 	@status
	# end

end
